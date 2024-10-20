package hwgrpc

import (
	"context"
	"errors"
	"hwlocale"
	"hwutil"
	"reflect"
	"telemetry"

	"common/hwerr"
	"common/locale"

	"github.com/go-playground/validator/v10"
	zlog "github.com/rs/zerolog/log"
	otelCodes "go.opentelemetry.io/otel/codes"
	"go.opentelemetry.io/otel/trace"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
)

func UnaryValidateInterceptor(
	ctx context.Context,
	req any,
	_ *grpc.UnaryServerInfo,
	next grpc.UnaryHandler,
) (res any, err error) {
	ctx, span, _ := telemetry.StartSpan(ctx, "hwgrpc.UnaryValidateInterceptor")
	defer span.End()

	ctx, err = validateInterceptor(ctx, req)
	if err != nil {
		return nil, err
	}
	return next(ctx, req)
}

func StreamValidateInterceptor(
	req any,
	stream grpc.ServerStream,
	_ *grpc.StreamServerInfo,
	next grpc.StreamHandler,
) error {
	ctx, span, _ := telemetry.StartSpan(stream.Context(), "hwgrpc.StreamValidateInterceptor")
	defer span.End()
	stream = WrapServerStream(stream, ctx)

	ctx, err := validateInterceptor(stream.Context(), req)
	if err != nil {
		return err
	}
	stream = WrapServerStream(stream, ctx)
	return next(req, stream)
}

func validateInterceptor(passedCtx context.Context, req any) (ctx context.Context, err error) {
	ctx = passedCtx

	span := trace.SpanFromContext(ctx)
	defer func() {
		if err != nil {
			span.SetStatus(otelCodes.Error, err.Error())
		}
	}()

	log := zlog.Ctx(ctx)

	err = hwutil.Validate(req)

	// no error, go to next in chain
	if err == nil {
		log.Info().Msg("input validation ok")
		return ctx, nil
	}

	// validate either returns an InvalidValidationError (in case there was an issue with the setup)
	// or ValidationErrors (in case the input has validation issues)

	var internalErr *validator.InvalidValidationError

	if errors.As(err, &internalErr) {
		return ctx, hwerr.NewStatusError(ctx, codes.Internal, err.Error(), locale.GenericError(ctx))
	}

	var valErrs validator.ValidationErrors

	if errors.As(err, &valErrs) {
		br := &errdetails.BadRequest{FieldViolations: make([]*errdetails.BadRequest_FieldViolation, 0)}

		for _, valErr := range valErrs {
			br.FieldViolations = append(br.FieldViolations, &errdetails.BadRequest_FieldViolation{
				Field:       valErr.Field(), // TODO: use json key
				Description: validateFieldErrDescription(ctx, valErr),
			})
		}

		return ctx, hwerr.NewStatusError(
			ctx,
			codes.InvalidArgument,
			err.Error(),
			locale.GenericInvalidArgsError(ctx, len(valErrs)),
			br,
		)
	}

	log.Error().
		Err(err).
		Str("type", reflect.TypeOf(err).String()).
		Msg("validate returned unexpected error")

	return ctx, hwerr.NewStatusError(ctx, codes.Internal, err.Error(), locale.GenericError(ctx))
}

func validateFieldErrDescription(ctx context.Context, fieldErr validator.FieldError) string {
	log := zlog.Ctx(ctx)
	var l hwlocale.Locale
	switch fieldErr.Tag() {
	case "required":
		l = locale.RequiredError(ctx)
	// TODO: add more tags
	default:
		log.Warn().
			Str("tag", fieldErr.Tag()).
			Msg("tag unhandled, falling back to InvalidFieldError description")
		l = locale.InvalidFieldError(ctx)
	}

	return hwlocale.Localize(ctx, l)
}

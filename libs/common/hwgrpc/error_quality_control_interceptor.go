package hwgrpc

import (
	"common/hwerr"
	"common/locale"
	"context"
	"google.golang.org/genproto/googleapis/rpc/errdetails"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"reflect"
	"telemetry"
)

func UnaryErrorQualityControlInterceptor(ctx context.Context, req any, info *grpc.UnaryServerInfo, next grpc.UnaryHandler) (any, error) {
	res, err := next(ctx, req)
	return res, checkErrorQualityInterceptor(ctx, err)
}

func StreamErrorQualityControlInterceptor(req any, stream grpc.ServerStream, info *grpc.StreamServerInfo, next grpc.StreamHandler) error {
	err := next(req, stream)
	return checkErrorQualityInterceptor(stream.Context(), err)
}

// ErrorQualityControlInterceptor logs violations to https://cloud.google.com/apis/design/errors#error_payloads
func checkErrorQualityInterceptor(ctx context.Context, err error) error {
	_, span, log := telemetry.StartSpan(ctx, "hwgrpc.checkErrorQualityInterceptor")
	defer span.End()

	// no error, no error quality to control
	if err == nil {
		return err
	}

	statusError, ok := status.FromError(err)
	if !ok {
		log.Warn().
			Err(err).
			Str("type", reflect.TypeOf(err).String()).
			Msg("non-status error was returned")
		return hwerr.NewStatusError(ctx, codes.Internal, err.Error(), locale.GenericError(ctx))
	}

	hasLocalizedMessage := false
	hasBadRequest := false
	hasPreconditionFailure := false
	hasErrorInfo := false
	hasResourceInfo := false
	hasQuotaFailure := false

	for _, detail := range statusError.Details() {
		if _, ok := detail.(*errdetails.LocalizedMessage); ok {
			hasLocalizedMessage = true
		}
		if _, ok := detail.(*errdetails.BadRequest); ok {
			hasBadRequest = true
		}
		if _, ok := detail.(*errdetails.PreconditionFailure); ok {
			hasPreconditionFailure = true
		}
		if _, ok := detail.(*errdetails.ErrorInfo); ok {
			hasErrorInfo = true
		}
		if _, ok := detail.(*errdetails.ResourceInfo); ok {
			hasResourceInfo = true
		}
		if _, ok := detail.(*errdetails.QuotaFailure); ok {
			hasQuotaFailure = true
		}
	}

	if !hasLocalizedMessage {
		log.Warn().Err(err).Msg("status error does not have a LocalizedMessage")

		var err2 error
		statusError, err2 = statusError.WithDetails(hwerr.LocalizedMessage(ctx, locale.GenericError(ctx)))
		if statusError != nil {
			err = statusError.Err()
		} else {
			log.Error().
				Err(err2).
				Msg("there was an error while creating the generic fallback statusError")
			return err // respond with original error
		}
	}

	switch statusError.Code() {
	case codes.InvalidArgument:
		fallthrough
	case codes.OutOfRange:
		if !hasBadRequest {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a BadRequest detail, but none found")
		}
	case codes.FailedPrecondition:
		if !hasPreconditionFailure {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a PreconditionFailure detail, but none found")
		}
	case codes.Unauthenticated:
		fallthrough
	case codes.PermissionDenied:
		fallthrough
	case codes.Aborted:
		if !hasErrorInfo {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a ErrorInfo detail, but none found")
		}
	case codes.NotFound:
		fallthrough
	case codes.AlreadyExists:
		if !hasResourceInfo {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a ResourceInfo detail, but none found")
		}
	case codes.ResourceExhausted:
		if !hasQuotaFailure {
			log.Warn().
				Str("code", statusError.Code().String()).
				Msg("status errors with this code should have a QuotaFailure detail, but none found")
		}
	}

	return err
}

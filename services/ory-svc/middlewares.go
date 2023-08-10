package main

import (
	"context"
	"errors"
	"net/http"
)

type httpResponseWriter struct{}
type httpRequest struct{}

func InjectResponseWriterAndRequestIntoContext() func(next http.Handler) http.Handler {
	return func(next http.Handler) http.Handler {
		return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
			r = r.WithContext(context.WithValue(r.Context(), httpResponseWriter{}, w))
			r = r.WithContext(context.WithValue(r.Context(), httpRequest{}, r))
			next.ServeHTTP(w, r)
		})
	}
}

func GetHttpResponseWriterFromCtx(ctx context.Context) (http.ResponseWriter, error) {
	if res, ok := ctx.Value(httpResponseWriter{}).(http.ResponseWriter); ok {
		return res, nil
	}
	return nil, errors.New("httpResponseWriter is not in context, try to use InjectResponseWriterAndRequestIntoContext middleware")
}

func GetHttpRequestFromCtx(ctx context.Context) (*http.Request, error) {
	if res, ok := ctx.Value(httpRequest{}).(*http.Request); ok {
		return res, nil
	}
	return nil, errors.New("httpRequest is not in context, try to use InjectResponseWriterAndRequestIntoContext middleware")
}

func GetHttpResponseWriterAndRequestFromCtx(ctx context.Context) (http.ResponseWriter, *http.Request, error) {
	w, err := GetHttpResponseWriterFromCtx(ctx)
	if err != nil {
		return nil, nil, err
	}

	r, err := GetHttpRequestFromCtx(ctx)
	if err != nil {
		return nil, nil, err
	}

	return w, r, nil
}

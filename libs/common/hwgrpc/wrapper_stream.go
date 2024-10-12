package hwgrpc

import (
	"context"
	"google.golang.org/grpc"
)

type WrapperStream struct {
	grpc.ServerStream
	ctx context.Context
}

type WrapperStreamOptions func(s *WrapperStream)

func WithContext(ctx context.Context) WrapperStreamOptions {
	return func(s *WrapperStream) {
		s.ctx = ctx
	}
}

func NewWrapperStream(streamToWrap grpc.ServerStream, opts ...WrapperStreamOptions) *WrapperStream {
	s := &WrapperStream{
		ServerStream: streamToWrap,
		ctx:          streamToWrap.Context(),
	}

	for _, opt := range opts {
		opt(s)
	}

	return s
}

func (s *WrapperStream) Context() context.Context {
	return s.ctx
}

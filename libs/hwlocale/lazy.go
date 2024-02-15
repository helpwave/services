package hwlocale

import (
	"context"
	"embed"
	"github.com/nicksnyder/go-i18n/v2/i18n"
	"sync"
)

type LazyLocaleBundle struct {
	once   sync.Once
	bundle *i18n.Bundle
	fs     *embed.FS
}

func NewLazyLocaleBundle(fsys *embed.FS) LazyLocaleBundle {
	return LazyLocaleBundle{
		once:   sync.Once{},
		bundle: nil,
		fs:     fsys,
	}
}

func (b *LazyLocaleBundle) Bundle(ctx context.Context) *i18n.Bundle {
	b.once.Do(func() {
		b.bundle = NewLocaleBundle(ctx, b.fs)
	})
	return b.bundle
}

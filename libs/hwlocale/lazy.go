package hwlocale

import (
	"context"
	"embed"
	"sync"

	"github.com/nicksnyder/go-i18n/v2/i18n"
)

// A LazyLocaleBundle is a factory for an i18n.Bundle
// It is useful in static contexts, where the environment is not setup yet at the time of its construction
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

// Bundle returns a pointer to an i18n.Bundle. It is idempotent and thread-safe.
func (b *LazyLocaleBundle) Bundle(ctx context.Context) *i18n.Bundle {
	b.once.Do(func() {
		b.bundle = NewLocaleBundle(ctx, b.fs)
	})
	return b.bundle
}

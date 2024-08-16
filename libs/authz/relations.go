package authz

import (
	"context"
	"fmt"
	"github.com/openfga/go-sdk/client"
	zlog "github.com/rs/zerolog"
	"hwutil"
)

type Tuple struct {
	inner client.ClientCheckRequest
}

func (r *Tuple) WithContext(ctx *map[string]interface{}) *Tuple {
	r.inner.Context = ctx
	return r
}

func (r *Tuple) WithContextualTuples(tuples ...client.ClientContextualTupleKey) *Tuple {
	r.inner.ContextualTuples = append(r.inner.ContextualTuples, tuples...)
	return r
}

func (r *Tuple) Check(ctx context.Context) (bool, error) {
	log := zlog.Ctx(ctx)

	// fgaClient is set in setup.go's Setup()
	data, err := fgaClient.Check(ctx).
		Body(r.inner).
		Execute()

	if err != nil {
		log.Error().
			Err(err).
			Str("fga.apiUrl", fgaClient.GetConfig().ApiUrl).
			Str("fga.tuple", "("+r.inner.User+", "+r.inner.Relation+", "+r.inner.Object+")").
			Msg("could not check permissions")
		return false, fmt.Errorf("authz: could not perform check: %w", err)
	}

	return data.GetAllowed(), nil
}

type WriteTupleTxBuilder struct {
	inner client.ClientWriteRequest
}

func (b *WriteTupleTxBuilder) WriteTuples(tuples ...*Tuple) *WriteTupleTxBuilder {
	tpls := hwutil.Map(tuples, func(t *Tuple) client.ClientTupleKey {
		return client.ClientTupleKey{
			User:      t.inner.User,
			Relation:  t.inner.Relation,
			Object:    t.inner.Object,
			Condition: nil,
		}
	})
	b.inner.Writes = append(b.inner.Writes, tpls...)
	return b
}

func (b *WriteTupleTxBuilder) DeleteTuples(tuples ...*Tuple) *WriteTupleTxBuilder {
	tpls := hwutil.Map(tuples, func(t *Tuple) client.ClientTupleKeyWithoutCondition {
		return client.ClientTupleKeyWithoutCondition{
			User:     t.inner.User,
			Relation: t.inner.Relation,
			Object:   t.inner.Object,
		}
	})
	b.inner.Deletes = append(b.inner.Deletes, tpls...)
	return b
}

func (b *WriteTupleTxBuilder) Commit(ctx context.Context) error {
	log := zlog.Ctx(ctx)
	_, err := fgaClient.Write(ctx).Body(b.inner).Execute()
	if err != nil {
		log.Error().Err(err).Interface("body", b.inner).Msg("authz: could not commit tuple write")
	}
	return err
}

func Tx() *WriteTupleTxBuilder {
	tx := WriteTupleTxBuilder{
		inner: client.ClientWriteRequest{
			Writes:  nil,
			Deletes: nil,
		},
	}
	return &tx
}

type Relation[U, O fmt.Stringer] struct {
	relation string
}

func (relation *Relation[U, O]) Tuple(user U, object O) *Tuple {
	tpl := Tuple{inner: client.ClientCheckRequest{
		User:             user.String(),
		Relation:         relation.relation,
		Object:           object.String(),
		Context:          nil,
		ContextualTuples: nil,
	}}

	return &tpl
}

func NewRelation[U, O fmt.Stringer](relation string) *Relation[U, O] {
	rel := Relation[U, O]{
		relation: relation,
	}
	return &rel
}

// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: batch.go

package property_value_repo

import (
	"context"
	"errors"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
)

var (
	ErrBatchAlreadyClosed = errors.New("batch already closed")
)

const connectValueWithSelectOptions = `-- name: ConnectValueWithSelectOptions :batchexec
INSERT INTO multi_select_values (value_id, select_option) VALUES ($1, $2) ON CONFLICT DO NOTHING
`

type ConnectValueWithSelectOptionsBatchResults struct {
	br     pgx.BatchResults
	tot    int
	closed bool
}

type ConnectValueWithSelectOptionsParams struct {
	ValueID      uuid.UUID
	SelectOption uuid.UUID
}

func (q *Queries) ConnectValueWithSelectOptions(ctx context.Context, arg []ConnectValueWithSelectOptionsParams) *ConnectValueWithSelectOptionsBatchResults {
	batch := &pgx.Batch{}
	for _, a := range arg {
		vals := []interface{}{
			a.ValueID,
			a.SelectOption,
		}
		batch.Queue(connectValueWithSelectOptions, vals...)
	}
	br := q.db.SendBatch(ctx, batch)
	return &ConnectValueWithSelectOptionsBatchResults{br, len(arg), false}
}

func (b *ConnectValueWithSelectOptionsBatchResults) Exec(f func(int, error)) {
	defer b.br.Close()
	for t := 0; t < b.tot; t++ {
		if b.closed {
			if f != nil {
				f(t, ErrBatchAlreadyClosed)
			}
			continue
		}
		_, err := b.br.Exec()
		if f != nil {
			f(t, err)
		}
	}
}

func (b *ConnectValueWithSelectOptionsBatchResults) Close() error {
	b.closed = true
	return b.br.Close()
}

const disconnectValueFromSelectOptions = `-- name: DisconnectValueFromSelectOptions :batchexec
DELETE FROM multi_select_values WHERE value_id = $1 AND select_option = $2
`

type DisconnectValueFromSelectOptionsBatchResults struct {
	br     pgx.BatchResults
	tot    int
	closed bool
}

type DisconnectValueFromSelectOptionsParams struct {
	ValueID      uuid.UUID
	SelectOption uuid.UUID
}

func (q *Queries) DisconnectValueFromSelectOptions(ctx context.Context, arg []DisconnectValueFromSelectOptionsParams) *DisconnectValueFromSelectOptionsBatchResults {
	batch := &pgx.Batch{}
	for _, a := range arg {
		vals := []interface{}{
			a.ValueID,
			a.SelectOption,
		}
		batch.Queue(disconnectValueFromSelectOptions, vals...)
	}
	br := q.db.SendBatch(ctx, batch)
	return &DisconnectValueFromSelectOptionsBatchResults{br, len(arg), false}
}

func (b *DisconnectValueFromSelectOptionsBatchResults) Exec(f func(int, error)) {
	defer b.br.Close()
	for t := 0; t < b.tot; t++ {
		if b.closed {
			if f != nil {
				f(t, ErrBatchAlreadyClosed)
			}
			continue
		}
		_, err := b.br.Exec()
		if f != nil {
			f(t, err)
		}
	}
}

func (b *DisconnectValueFromSelectOptionsBatchResults) Close() error {
	b.closed = true
	return b.br.Close()
}

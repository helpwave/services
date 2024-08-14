// Code generated by sqlc. DO NOT EDIT.
// versions:
//   sqlc v1.27.0
// source: batch.go

package property_repo

import (
	"context"
	"errors"

	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
)

var (
	ErrBatchAlreadyClosed = errors.New("batch already closed")
)

const deleteSelectOptions = `-- name: DeleteSelectOptions :batchexec
DELETE FROM select_options WHERE id = $1
`

type DeleteSelectOptionsBatchResults struct {
	br     pgx.BatchResults
	tot    int
	closed bool
}

func (q *Queries) DeleteSelectOptions(ctx context.Context, id []uuid.UUID) *DeleteSelectOptionsBatchResults {
	batch := &pgx.Batch{}
	for _, a := range id {
		vals := []interface{}{
			a,
		}
		batch.Queue(deleteSelectOptions, vals...)
	}
	br := q.db.SendBatch(ctx, batch)
	return &DeleteSelectOptionsBatchResults{br, len(id), false}
}

func (b *DeleteSelectOptionsBatchResults) Exec(f func(int, error)) {
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

func (b *DeleteSelectOptionsBatchResults) Close() error {
	b.closed = true
	return b.br.Close()
}

const getSelectOptionsBatch = `-- name: GetSelectOptionsBatch :batchone
SELECT id, name, description, is_custom, select_data_id
FROM select_options
WHERE id = $1
`

type GetSelectOptionsBatchBatchResults struct {
	br     pgx.BatchResults
	tot    int
	closed bool
}

func (q *Queries) GetSelectOptionsBatch(ctx context.Context, id []uuid.UUID) *GetSelectOptionsBatchBatchResults {
	batch := &pgx.Batch{}
	for _, a := range id {
		vals := []interface{}{
			a,
		}
		batch.Queue(getSelectOptionsBatch, vals...)
	}
	br := q.db.SendBatch(ctx, batch)
	return &GetSelectOptionsBatchBatchResults{br, len(id), false}
}

func (b *GetSelectOptionsBatchBatchResults) QueryRow(f func(int, SelectOption, error)) {
	defer b.br.Close()
	for t := 0; t < b.tot; t++ {
		var i SelectOption
		if b.closed {
			if f != nil {
				f(t, i, ErrBatchAlreadyClosed)
			}
			continue
		}
		row := b.br.QueryRow()
		err := row.Scan(
			&i.ID,
			&i.Name,
			&i.Description,
			&i.IsCustom,
			&i.SelectDataID,
		)
		if f != nil {
			f(t, i, err)
		}
	}
}

func (b *GetSelectOptionsBatchBatchResults) Close() error {
	b.closed = true
	return b.br.Close()
}

const insertSelectOptionsBatch = `-- name: InsertSelectOptionsBatch :batchexec
INSERT INTO select_options
      (id, name, description, is_custom, select_data_id)
VALUES (
    $1,
    $2,
    coalesce($3, ''),
    coalesce($4, false),
    $5
)
`

type InsertSelectOptionsBatchBatchResults struct {
	br     pgx.BatchResults
	tot    int
	closed bool
}

type InsertSelectOptionsBatchParams struct {
	ID           uuid.UUID
	Name         string
	Description  interface{}
	IsCustom     interface{}
	SelectDataID uuid.UUID
}

func (q *Queries) InsertSelectOptionsBatch(ctx context.Context, arg []InsertSelectOptionsBatchParams) *InsertSelectOptionsBatchBatchResults {
	batch := &pgx.Batch{}
	for _, a := range arg {
		vals := []interface{}{
			a.ID,
			a.Name,
			a.Description,
			a.IsCustom,
			a.SelectDataID,
		}
		batch.Queue(insertSelectOptionsBatch, vals...)
	}
	br := q.db.SendBatch(ctx, batch)
	return &InsertSelectOptionsBatchBatchResults{br, len(arg), false}
}

func (b *InsertSelectOptionsBatchBatchResults) Exec(f func(int, error)) {
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

func (b *InsertSelectOptionsBatchBatchResults) Close() error {
	b.closed = true
	return b.br.Close()
}

const updateSelectOptionsBatch = `-- name: UpdateSelectOptionsBatch :batchexec
UPDATE select_options
SET is_custom = coalesce($1, is_custom),
    name = coalesce($2, name),
    description = coalesce($3, description)
WHERE id = $4
`

type UpdateSelectOptionsBatchBatchResults struct {
	br     pgx.BatchResults
	tot    int
	closed bool
}

type UpdateSelectOptionsBatchParams struct {
	IsCustom    *bool
	Name        *string
	Description *string
	ID          uuid.UUID
}

func (q *Queries) UpdateSelectOptionsBatch(ctx context.Context, arg []UpdateSelectOptionsBatchParams) *UpdateSelectOptionsBatchBatchResults {
	batch := &pgx.Batch{}
	for _, a := range arg {
		vals := []interface{}{
			a.IsCustom,
			a.Name,
			a.Description,
			a.ID,
		}
		batch.Queue(updateSelectOptionsBatch, vals...)
	}
	br := q.db.SendBatch(ctx, batch)
	return &UpdateSelectOptionsBatchBatchResults{br, len(arg), false}
}

func (b *UpdateSelectOptionsBatchBatchResults) Exec(f func(int, error)) {
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

func (b *UpdateSelectOptionsBatchBatchResults) Close() error {
	b.closed = true
	return b.br.Close()
}

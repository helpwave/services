package hwtesting

import (
	"context"
	_ "github.com/golang-migrate/migrate/v4/database/postgres"
	_ "github.com/golang-migrate/migrate/v4/source/file"
	"sync"
)

type ContainerOpt int

const (
	Postgres   ContainerOpt = iota
	Eventstore ContainerOpt = iota
	Redis      ContainerOpt = iota
)

type Endpoints []string

func (e Endpoints) Get(opt ContainerOpt) string {
	return e[opt]
}

func maxOpt(opts []ContainerOpt) int {
	m := 0
	for _, opt := range opts {
		m = max(m, int(opt))
	}
	return m
}

func StartContainers(ctx context.Context, opts ...ContainerOpt) (endpoints Endpoints, teardown func()) {
	var wg sync.WaitGroup

	endpoints = make(Endpoints, maxOpt(opts)+1)
	teardowns := make([]func(), 0)

	for _, opt := range opts {
		wg.Add(1)
		var f func(ctx context.Context) (string, func())
		if opt == Postgres {
			f = startPostgres
		} else if opt == Eventstore {
			f = startEventstore
		} else if opt == Redis {
			f = startRedis
		} else {
			panic("unknown ContainerOpt provided")
		}

		go func() {
			endpoint, teardown := f(ctx)
			endpoints[opt] = endpoint
			teardowns = append(teardowns, teardown)
			wg.Done()
		}()
	}
	wg.Wait()

	teardown = func() {
		var wg sync.WaitGroup

		for _, teardown := range teardowns {
			wg.Add(1)
			go func() {
				teardown()
				wg.Done()
			}()
		}
		wg.Wait()
	}

	return endpoints, teardown
}

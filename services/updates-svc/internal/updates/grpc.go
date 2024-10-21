package updates

import (
	"common/auth"
	"context"
	pb "gen/services/updates_svc/v1"
	"hwes"
	"telemetry"
	"time"

	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
)

type UpdatesGrpcService struct {
	pb.UnimplementedUpdatesServiceServer
	es *esdb.Client
}

func NewUpdatesGrpcService(es *esdb.Client) *UpdatesGrpcService {
	return &UpdatesGrpcService{
		es: es,
	}
}

func (s *UpdatesGrpcService) ReceiveUpdates(req *pb.ReceiveUpdatesRequest, stream pb.UpdatesService_ReceiveUpdatesServer) error {
	ctx, span, log := telemetry.StartSpan(stream.Context(), "updates.ReceiveUpdates")
	defer span.End()

	tokenExpires, err := auth.SessionValidUntil(ctx)
	if err != nil {
		return err
	}

	tokenExpiresIn := time.Until(tokenExpires)

	ctx, cancel := context.WithCancel(ctx)
	// Close stream after session is invalid
	time.AfterFunc(tokenExpiresIn, func() {
		log.Debug().Msg("closing stream, token expired")
		cancel()
	})

	log.Debug().
		// We are using .Str() instead of .Dur() to enhance human readability in the logs
		// .Dur() -> 210000
		// .Str() -> 3m30s
		Str("closeStreamIn", tokenExpiresIn.String()).
		Msg("will close session when token expires")

	organizationID, err := auth.GetOrganizationID(ctx)
	if err != nil {
		return err
	}

	esSubscribeToAllOptions := esdb.SubscribeToAllOptions{
		From:   esdb.End{},
		Filter: esdb.ExcludeSystemEventsFilter(),
	}

	if req.Revision != nil {
		log.Debug().
			Uint64("revision", *req.Revision).
			Msg("revision provided to begin stream")

		esSubscribeToAllOptions.From = esdb.Position{
			Commit:  *req.Revision,
			Prepare: *req.Revision,
		}
	}

	esStream, err := s.es.SubscribeToAll(ctx, esSubscribeToAllOptions)
	if err != nil {
		return err
	}
	defer esStream.Close()

	for {
		esdbEvent := esStream.Recv()

		select {
		case <-stream.Context().Done():
			return nil
		default:
		}

		if esdbEvent.SubscriptionDropped != nil {
			esStream.Close()
			log.Debug().Msg("subscription dropped, close stream")
			break
		}

		if esdbEvent.CaughtUp != nil {
			log.Debug().Msg("caught up, continue")
			continue
		}

		if esdbEvent.EventAppeared == nil || esdbEvent.EventAppeared.Event == nil {
			log.Debug().Msg("no event in esdb event, continue")
			continue
		}

		event, err := hwes.NewEventFromRecordedEvent(esdbEvent.EventAppeared.Event)
		if err != nil {
			log.Error().Err(err).Msg("cannot create new event from recorded event")
			return err
		}

		// Only handle events for the users organization
		if event.OrganizationID != nil && *event.OrganizationID != organizationID {
			continue
		}

		domainEvent := &pb.DomainEvent{
			EventId:       event.EventID.String(),
			EventType:     event.EventType,
			AggregateId:   event.AggregateID.String(),
			AggregateType: string(event.AggregateType),
		}

		res := &pb.ReceiveUpdatesResponse{
			Revision: *esdbEvent.EventAppeared.Commit,
			Event: &pb.ReceiveUpdatesResponse_DomainEvent{
				DomainEvent: domainEvent,
			},
		}

		if err := stream.Send(res); err != nil {
			log.Error().Err(err).Msg("cannot send on stream")
			return err
		}
	}

	return nil
}

package updates

import (
	pb "gen/services/updates_svc/v1"
	"github.com/EventStore/EventStore-Client-Go/v4/esdb"
	"hwes"
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
	ctx := stream.Context()

	esSubscribeToAllOptions := esdb.SubscribeToAllOptions{
		From:   esdb.End{},
		Filter: esdb.ExcludeSystemEventsFilter(),
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
			break
		}

		if esdbEvent.CaughtUp != nil {
			continue
		}

		if esdbEvent.EventAppeared == nil || esdbEvent.EventAppeared.Event == nil {
			continue
		}

		event, err := hwes.NewEventFromRecordedEvent(esdbEvent.EventAppeared.Event)
		if err != nil {
			return err
		}

		domainEvent := &pb.DomainEvent{
			EventId:       event.EventID.String(),
			EventType:     event.EventType,
			AggregateId:   event.AggregateID.String(),
			AggregateType: string(event.AggregateType),
		}

		res := &pb.ReceiveUpdatesResponse{
			Event: &pb.ReceiveUpdatesResponse_DomainEvent{
				DomainEvent: domainEvent,
			},
		}

		if err := stream.Send(res); err != nil {
			return err
		}
	}

	return nil
}

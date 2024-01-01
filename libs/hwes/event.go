package hwes

import (
	"encoding/json"
	"github.com/EventStore/EventStore-Client-Go/esdb"
	"github.com/google/uuid"
	"time"
)

type Event struct {
	ID        uuid.UUID
	Type      string
	Data      []byte
	Timestamp time.Time
}

func NewBaseEvent(eventType string) Event {
	return Event{
		ID:        uuid.New(),
		Type:      eventType,
		Timestamp: time.Now().UTC(),
	}
}

func (e *Event) ToEventData() esdb.EventData {
	return esdb.EventData{
		EventType:   e.Type,
		ContentType: esdb.JsonContentType,
		Data:        e.Data,
	}
}

func (e *Event) SetData(data []byte) *Event {
	e.Data = data
	return e
}

func (e *Event) SetJsonData(data interface{}) error {
	dataBytes, err := json.Marshal(data)
	if err != nil {
		return err
	}
	e.Data = dataBytes
	return nil
}

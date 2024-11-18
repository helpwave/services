package commonPerm

import "hwauthz"

// GenericObject implements hwauthz.Object and can be used for ad-hoc Objects
// Use this only if it is not feasible to write a proper hwauthz.Object-implementing type
// For example for tests, or if the type is only used once or so
type GenericObject struct {
	Typ hwauthz.ObjectType
	Id  string
}

func (s GenericObject) Type() hwauthz.ObjectType {
	return s.Typ
}

func (s GenericObject) ID() string {
	return s.Id
}

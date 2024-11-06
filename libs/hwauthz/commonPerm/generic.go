package commonPerm

import "hwauthz"

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

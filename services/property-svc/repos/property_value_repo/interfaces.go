package property_value_repo

import "github.com/jackc/pgx/v5/pgtype"

// This is a handwritten file,
// we should open a PR to generate {s/g}etters in sqlc

// Implement models.BasicChangeSettable

// CreateBasicPropertyValueParams

func (c *CreateBasicPropertyValueParams) SetTextValue(s *string) {
	c.TextValue = s
}

func (c *CreateBasicPropertyValueParams) SetNumberValue(f *float64) {
	c.NumberValue = f
}

func (c *CreateBasicPropertyValueParams) SetBoolValue(b *bool) {
	c.BoolValue = b
}

func (c *CreateBasicPropertyValueParams) SetDateValue(d pgtype.Date) {
	c.DateValue = d
}

func (c *CreateBasicPropertyValueParams) SetDateTimeValue(t pgtype.Timestamp) {
	c.DateTimeValue = t
}

// UpdatePropertyValueByIDParams

func (u *UpdatePropertyValueByIDParams) SetTextValue(s *string) {
	u.TextValue = s
}

func (u *UpdatePropertyValueByIDParams) SetNumberValue(f *float64) {
	u.NumberValue = f
}

func (u *UpdatePropertyValueByIDParams) SetBoolValue(b *bool) {
	u.BoolValue = b
}

func (u *UpdatePropertyValueByIDParams) SetDateValue(d pgtype.Date) {
	u.DateValue = d
}

func (u *UpdatePropertyValueByIDParams) SetDateTimeValue(t pgtype.Timestamp) {
	u.DateTimeValue = t
}

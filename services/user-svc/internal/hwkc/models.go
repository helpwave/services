package hwkc

import "strings"

type User struct {
	ID *string `json:"id,omitempty"`
}

type Organization struct {
	ID          *string                `json:"id,omitempty"`
	Name        *string                `json:"name,omitempty"`
	DisplayName *string                `json:"displayName,omitempty"`
	Attributes  OrganizationAttributes `json:"attributes,omitempty"`
}

type OrganizationAttributes struct {
	IsPersonal []string `json:"isPersonal"`
}

func (o *Organization) IsPersonal() bool {
	return len(o.Attributes.IsPersonal) > 0 && strings.ToLower(o.Attributes.IsPersonal[0]) == "true"
}

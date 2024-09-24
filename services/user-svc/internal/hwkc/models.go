package hwkc

type User struct {
	ID *string `json:"id,omitempty"`
}

type Organization struct {
	ID            *string              `json:"id,omitempty"`
	Name          *string              `json:"name,omitempty"`
	DisplayName   *string              `json:"displayName,omitempty"`
	RawAttributes *map[string][]string `json:"attributes,omitempty"`

	Attributes struct {
		IsPersonal bool
	} `json:"-"`
}

func (o *Organization) ParseRawAttributes() {
	o.Attributes = struct {
		IsPersonal bool
	}{
		IsPersonal: false,
	}

	if rawAttrs, ok := (*o.RawAttributes)["isPersonal"]; ok && len(rawAttrs) > 0 {
		o.Attributes.IsPersonal = rawAttrs[0] == "true"
	}
}

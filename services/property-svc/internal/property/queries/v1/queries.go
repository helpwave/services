package v1

type PropertyQueries struct {
	GetPropertyByID                       GetPropertyByIDQueryHandler
	GetProperties                         GetPropertiesQueryHandler
	IsPropertyAlwaysIncludedForViewSource IsPropertyAlwaysIncludedForViewSource
}

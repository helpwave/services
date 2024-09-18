package v1

type PropertyQueries struct {
	GetPropertyByID                       GetPropertyByIDQueryHandler
	GetPropertiesBySubjectType            GetPropertiesBySubjectTypeHandler
	IsPropertyAlwaysIncludedForViewSource IsPropertyAlwaysIncludedForViewSource
}

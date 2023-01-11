package hwgorm

import (
	"gorm.io/gorm"
)

type PagedRequest struct {
	Page     int `json:"page" validate:"required"`
	PageSize int `json:"pageSize" validate:"required"`
}

type PageInfo struct {
	Page      int   `json:"page"`
	PageSize  int   `json:"pageSize"`
	TotalSize int64 `json:"totalSize"`
	LastPage  bool  `json:"lastPage"`
}

// Paginate defines a [gorm scope](https://gorm.io/docs/scopes.html)
// ex. usage:
//
//	db.Scopes(Paginate(pagination)).Select("id, name").Find(&departments)
//
// here `pagination` is a PageInfo obtained using GetPageInfo
func Paginate(pageInfo PageInfo) func(db *gorm.DB) *gorm.DB {
	page := pageInfo.Page
	pageSize := pageInfo.PageSize

	return func(db *gorm.DB) *gorm.DB {
		offset := (page - 1) * pageSize
		return db.Offset(offset).Limit(pageSize)
	}
}

// GetPageInfo extracts the page information from the PagedRequest
// and queries the DB for additional information
// if req is nil, defaults for the first page are used
func GetPageInfo(db *gorm.DB, req *PagedRequest, model interface{}) (PageInfo, error) {
	if req == nil {
		req = &PagedRequest{
			Page:     1,
			PageSize: 10,
		}
	}

	page := req.Page
	if page <= 0 {
		page = 1
	}

	pageSize := req.PageSize
	if pageSize <= 0 {
		pageSize = 10
	} else if pageSize > 100 {
		pageSize = 100
	}

	var totalSize int64
	tx := db.Model(model).Count(&totalSize)

	if tx.Error != nil {
		return PageInfo{}, tx.Error
	}

	lastPage := int64(page*pageSize) >= totalSize

	return PageInfo{
		Page:      page,
		PageSize:  pageSize,
		TotalSize: totalSize,
		LastPage:  lastPage,
	}, nil
}

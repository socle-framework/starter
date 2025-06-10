package querybuilder

import (
	"fmt"

	"github.com/Masterminds/squirrel"
)

type Sort struct {
	By  string
	Dir string
}

func ApplySort(q squirrel.SelectBuilder, s Sort) squirrel.SelectBuilder {
	if s.By == "" {
		return q
	}
	dir := "ASC"
	if s.Dir == "desc" || s.Dir == "DESC" {
		dir = "DESC"
	}
	return q.OrderBy(fmt.Sprintf("%s %s", s.By, dir))
}

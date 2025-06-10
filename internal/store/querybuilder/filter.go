package querybuilder

import (
	"fmt"

	"github.com/Masterminds/squirrel"
)

type FilterField struct {
	Column string
	Value  any
	Op     string // default: "ILIKE", can be "=", "IN", etc.
}

func ApplyFilters(q squirrel.SelectBuilder, filters []FilterField) squirrel.SelectBuilder {
	for _, f := range filters {
		if f.Value == nil {
			continue
		}
		op := f.Op
		if op == "" {
			op = "ILIKE"
		}
		clause := fmt.Sprintf("%s %s ?", f.Column, op)
		q = q.Where(clause, f.Value)
	}
	return q
}

package middleware

import (
	"app/internal/store"

	"github.com/socle-framework/socle"
)

type Middleware struct {
	Core  *socle.Socle
	Store store.Store
}

package handlers

import (
	"app/internal/store"

	"github.com/socle-framework/socle"
)

// Handlers is the type for handlers, and gives access to Socle and models
type Handlers struct {
	Core  *socle.Socle
	Store store.Store
}

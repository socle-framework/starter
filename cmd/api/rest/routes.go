package rest

import (
	"net/http"

	"github.com/go-chi/chi/v5"
)

func (app *Application) routes() http.Handler {
	r := chi.NewRouter()
	// middleware must come before any routes
	r.Get("/", func(w http.ResponseWriter, r *http.Request) {
		w.Write([]byte("welcome"))
	})
	// static routes
	fileServer := http.FileServer(http.Dir("./public"))
	r.Handle("/public/*", http.StripPrefix("/public", fileServer))

	return r
}

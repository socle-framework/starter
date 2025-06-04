package main

import (
	"net/http"

	"app/cmd/web/views"

	"github.com/a-h/templ"
	"github.com/go-chi/chi/v5"
	"github.com/socle-framework/socle"
)

func (app *application) routes() http.Handler {
	r := chi.NewRouter()
	// middleware must come before any routes

	// add routes here
	r.Get("/", templ.Handler(views.Home()).ServeHTTP)
	//a.get("/", templ.Handler(component))

	// static routes
	fileServer := http.FileServer(http.Dir("./public"))
	r.Handle("/public/*", http.StripPrefix("/public", fileServer))

	// routes from socle
	r.Mount("/socle", socle.Routes())

	// routes from web inner api
	r.Mount("/api", app.ApiRoutes())

	return r
}

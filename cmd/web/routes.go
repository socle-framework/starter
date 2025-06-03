package main

import (
	"net/http"

	"app/cmd/web/views"

	"github.com/a-h/templ"
	"github.com/go-chi/chi/v5"
	"github.com/socle-framework/socle"
)

func (app *application) routes() *chi.Mux {
	// middleware must come before any routes

	// add routes here
	app.Core.Routes.Get("/", templ.Handler(views.Home()).ServeHTTP)
	//a.get("/", templ.Handler(component))

	// static routes
	fileServer := http.FileServer(http.Dir("./public"))
	app.Core.Routes.Handle("/public/*", http.StripPrefix("/public", fileServer))

	// routes from socle
	app.Core.Routes.Mount("/socle", socle.Routes())

	// routes from web inner api
	app.Core.Routes.Mount("/api", app.ApiRoutes())

	return app.Core.Routes
}

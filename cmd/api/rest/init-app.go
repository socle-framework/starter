package main

import (
	"app/cmd/web/handlers"
	"app/cmd/web/middleware"
	"app/internal"
	"app/internal/store"
	"log"
)

func initApp() *application {
	core, err := internal.Boot("api")
	if err != nil {
		log.Fatal(err)
	}

	core.AppName = "myapp"

	myMiddleware := &middleware.Middleware{
		Core: core,
	}

	myHandlers := &handlers.Handlers{
		Core: core,
	}

	app := &application{
		Core:       core,
		Handlers:   myHandlers,
		Middleware: myMiddleware,
	}

	app.Core.Routes.Mount("/", app.routes())
	store := store.NewStore(app.Core.DB.Pool)

	app.Middleware.Store = store
	myHandlers.Store = store
	return app
}

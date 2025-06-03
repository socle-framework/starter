package main

import (
	"app/cmd/web/handlers"
	"app/cmd/web/middleware"
	"app/internal"
	"app/internal/store"
	"log"
)

func initApplication() *application {

	core, err := internal.Boot()
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

	app.Core.Routes = app.routes()
	store := store.NewStore(app.Core.DB.Pool)

	app.Middleware.Store = store
	myHandlers.Store = store
	return app
}

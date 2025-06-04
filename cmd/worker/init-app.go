package main

import (
	"app/internal"
	"app/internal/store"
	"log"
)

func initApp() *application {
	core, err := internal.Boot()
	if err != nil {
		log.Fatal(err)
	}

	app := &application{
		Core: core,
	}

	app.Store = store.NewStore(app.Core.DB.Pool)
	return app
}

package main

import (
	"app/internal"
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
	return app
}

package rest

import (
	"app/internal"
	"app/internal/store"
	"log"
	"sync"

	"github.com/socle-framework/socle"
)

type Application struct {
	Core  *socle.Socle
	Store store.Store
	wg    sync.WaitGroup
}

func InitApp() *Application {
	core, err := internal.Boot("api/rest")
	if err != nil {
		log.Fatal(err)
	}
	app := &Application{
		Core: core,
	}

	app.Core.Routes.Mount("/", app.routes())
	app.Store = store.NewStore(app.Core.DB.Pool)

	return app
}

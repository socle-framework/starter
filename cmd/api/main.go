package main

import (
	"app/cmd/web/handlers"
	"app/cmd/web/middleware"
	"os"
	"os/signal"
	"sync"
	"syscall"

	"github.com/socle-framework/socle"
)

type application struct {
	Core       *socle.Socle
	Handlers   *handlers.Handlers
	Middleware *middleware.Middleware
	wg         sync.WaitGroup
}

//	@title			GopherSocial API
//	@description	API for GopherSocial, a social network for gohpers
//	@termsOfService	http://swagger.io/terms/

//	@contact.name	API Support
//	@contact.url	http://www.swagger.io/support
//	@contact.email	support@swagger.io

//	@license.name	Apache 2.0
//	@license.url	http://www.apache.org/licenses/LICENSE-2.0.html

// @BasePath					/v1
//
// @securityDefinitions.apikey	ApiKeyAuth
// @in							header
// @name						Authorization
// @description
func main() {
	app := initApp()
	go app.listenForShutdown()
	err := app.Core.ListenAndServe()
	app.Core.Log.ErrorLog.Println(err)
}

func (a *application) shutdown() {
	// put any clean up tasks here

	// block until the WaitGroup is empty
	a.wg.Wait()
}

func (app *application) listenForShutdown() {
	quit := make(chan os.Signal, 1)
	signal.Notify(quit, syscall.SIGINT, syscall.SIGTERM)
	s := <-quit

	app.Core.Log.InfoLog.Println("Received signal", s.String())
	app.shutdown()

	os.Exit(0)
}

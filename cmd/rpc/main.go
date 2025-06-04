package main

import (
	"os"
	"os/signal"
	"sync"
	"syscall"

	"github.com/socle-framework/socle"
)

type application struct {
	Core *socle.Socle
	wg   sync.WaitGroup
}

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

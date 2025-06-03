package internal

import (
	"os"

	"github.com/socle-framework/socle"
)

func Boot() (*socle.Socle, error) {
	path, err := os.Getwd()
	if err != nil {
		return nil, err
	}
	// init socle
	socleApp := &socle.Socle{}
	err = socleApp.New(path, []string{"api", "web"})
	if err != nil {
		return nil, err
	}

	return socleApp, nil

}

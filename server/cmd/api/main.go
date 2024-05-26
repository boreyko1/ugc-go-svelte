package main

import (
	"aws-ugc-go-svelte/server/internal/data"
	"log/slog"
)

type config struct {
}

type app struct {
	config config
	logger *slog.Logger
	models data.Models
}

func main() {

}

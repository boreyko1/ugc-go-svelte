package main

import (
	"log/slog"
	"ugc-go-svelte/server/internal/data"
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

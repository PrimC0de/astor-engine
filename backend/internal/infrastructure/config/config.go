package config

import (
	"fmt"
	"os"
)

type Config struct {
	Port                  string
	DatabaseURL           string
	JWTSecret             string
	InternalWebhookSecret string
	N8NWebhookURL         string
}

func Load() (Config, error) {
	cfg := Config{
		Port:                  envOrDefault("PORT", "8080"),
		DatabaseURL:           os.Getenv("DATABASE_URL"),
		JWTSecret:             os.Getenv("JWT_SECRET"),
		InternalWebhookSecret: os.Getenv("INTERNAL_WEBHOOK_SECRET"),
		N8NWebhookURL:         os.Getenv("N8N_WEBHOOK_URL"),
	}

	if cfg.DatabaseURL == "" {
		return Config{}, fmt.Errorf("DATABASE_URL is required")
	}

	return cfg, nil
}

func envOrDefault(key, fallback string) string {
	if value := os.Getenv(key); value != "" {
		return value
	}
	return fallback
}

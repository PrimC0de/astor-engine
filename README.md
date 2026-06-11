# Astor Research

AI-powered crypto research platform. Monorepo layout:

```
backend/    Go API service (clean architecture)
agents/     Python FastAPI agent service
frontend/   React + TypeScript SPA (TanStack Router + Query)
n8n/        Workflow exports (Phase 9)
backend/db/ Sqitch database migrations
```

## Prerequisites

- Docker and Docker Compose
- (Optional) Go 1.23+, Node 20+, Python 3.12+ for local development outside Docker

## Quick Start

```bash
cp .env.example .env
docker compose up --build
```

| Service        | URL                          |
|----------------|------------------------------|
| Frontend       | http://localhost:5173        |
| Go API         | http://localhost:8080        |
| Python agents  | http://localhost:8000        |
| n8n            | http://localhost:5678        |
| PostgreSQL     | localhost:5432               |

### Health Checks

```bash
curl http://localhost:8080/health   # Go service
curl http://localhost:8000/health   # Python agents
```

## Database Migrations

Migrations run automatically via the `migrate` service on `docker compose up`. Sqitch deploys:

1. `appschema` — pgcrypto extension
2. `users`
3. `research_jobs`
4. `reports`
5. `refresh_tokens`

To run migrations manually:

```bash
docker compose run --rm migrate deploy db:pg://astor:astor@postgres:5432/astor
```

## Environment Variables

See [`.env.example`](.env.example) for all required variables.

## Implementation Phases

Phase 0 (current): monorepo scaffold, Docker Compose, Sqitch migrations, health endpoints.

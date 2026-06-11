-- Deploy: research_jobs
-- Requires: users

BEGIN;

CREATE TABLE research_jobs (
    id         UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id    UUID NOT NULL REFERENCES users(id),
    asset      TEXT NOT NULL,
    status     TEXT NOT NULL DEFAULT 'pending',
    created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX research_jobs_user_id_idx ON research_jobs (user_id);
CREATE INDEX research_jobs_status_idx ON research_jobs (status);
CREATE INDEX research_jobs_asset_created_at_idx ON research_jobs (asset, created_at DESC);

COMMIT;

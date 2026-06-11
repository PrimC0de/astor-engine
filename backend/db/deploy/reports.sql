-- Deploy: reports
-- Requires: research_jobs

BEGIN;

CREATE TABLE reports (
    id               UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    job_id           UUID NOT NULL REFERENCES research_jobs(id),
    content          TEXT NOT NULL,
    confidence_score NUMERIC(4,3) NOT NULL,
    sentiment        TEXT NOT NULL,
    risk_level       TEXT NOT NULL,
    from_cache       BOOLEAN NOT NULL DEFAULT false,
    created_at       TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE INDEX reports_job_id_idx ON reports (job_id);
CREATE INDEX reports_asset_cache_idx ON reports (created_at DESC);

COMMIT;

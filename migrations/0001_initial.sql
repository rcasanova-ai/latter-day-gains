CREATE TABLE IF NOT EXISTS prayers (id TEXT PRIMARY KEY, body TEXT NOT NULL, category TEXT NOT NULL, visibility TEXT NOT NULL DEFAULT 'private', created_at TEXT NOT NULL DEFAULT (datetime('now')));
CREATE INDEX IF NOT EXISTS idx_prayers_public ON prayers (visibility, created_at);

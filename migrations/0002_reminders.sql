ALTER TABLE tasks ADD COLUMN remind_at INTEGER;
ALTER TABLE tasks ADD COLUMN reminded INTEGER NOT NULL DEFAULT 0;
CREATE INDEX idx_tasks_due ON tasks(remind_at) WHERE reminded = 0 AND remind_at IS NOT NULL;
DROP TABLE IF EXISTS basics.app_events;

CREATE TABLE basics.app_events (
	id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
	event_name TEXT NOT NULL,
	metadata JSONB DEFAULT '{}'::jsonb,
	created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO basics.app_events (event_name,metadata)
VALUES ('ABC','{"date":"2026-12-06"}');

SELECT * FROM basics.app_events;

SELECT 
	event_name,
	metadata ->> 'browser' AS browser_name -- extract metadata.browser and rename column to browser_name
FROM basics.app_events
WHERE metadata ? 'browser'; -- filer by key browser exists
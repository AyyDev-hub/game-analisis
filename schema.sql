CREATE TABLE IF NOT EXISTS sessions (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    game_name TEXT NOT NULL,
    session_id TEXT NOT NULL UNIQUE,
    created_at TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    session_id TEXT NOT NULL,
    activity TEXT NOT NULL,
    activity_order INTEGER NOT NULL,
    created_at TEXT NOT NULL
);

CREATE INDEX IF NOT EXISTS idx_sessions_game
ON sessions(game_name);

CREATE INDEX IF NOT EXISTS idx_activities_session
ON activities(session_id);

CREATE INDEX IF NOT EXISTS idx_activities_activity
ON activities(activity);

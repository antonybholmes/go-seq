PRAGMA journal_mode = WAL;
PRAGMA foreign_keys = ON;

CREATE TABLE track (
	id INTEGER PRIMARY KEY ASC,
	platform TEXT NOT NULL,
	genome TEXT NOT NULL,
	name TEXT NOT NULL,
	bin_width INTEGER NOT NULL,
	stat_mode TEXT NOT NULL);

-- CREATE TABLE track (
	-- id INTEGER PRIMARY KEY ASC,
	-- bin INTEGER NOT NULL UNIQUE,
	-- reads INTEGER NOT NULL,
	-- UNIQUE(bin, reads));
-- CREATE INDEX track_bin_idx ON track (bin);

CREATE TABLE bins (
	id INTEGER PRIMARY KEY ASC,
	chr TEXT NOT NULL,
	start INTEGER NOT NULL,
	end INTEGER NOT NULL,
	reads INTEGER NOT NULL,
	UNIQUE(chr, start, end));

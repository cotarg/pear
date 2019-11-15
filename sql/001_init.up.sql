CREATE TABLE IF NOT EXISTS seed (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	sower TEXT NOT NULL,
	topic TEXT NOT NULL,
	planted TIMESTAMPTZ NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS pear(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	seed_id INTEGER REFERENCES seed (id) NOT NULL UNIQUE,
	picker TEXT NOT NULL,
	picked TIMESTAMPTZ NOT NULL DEFAULT now()
);
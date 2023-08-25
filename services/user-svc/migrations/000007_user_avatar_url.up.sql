ALTER TABLE users
	ADD COLUMN IF NOT EXISTS
	    avatar_url text DEFAULT 'https://source.boringavatars.com/marble/128/';

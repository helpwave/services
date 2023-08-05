CREATE TABLE IF NOT EXISTS users (
    id uuid PRIMARY KEY NOT NULL,
    email varchar(255) NOT NULL,
    nickname varchar(255) NOT NULL,
    name varchar(255) NOT NULL
)

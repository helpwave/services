CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS emergency_rooms (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name text NOT NULL,
    location point,
    displayable_address text NOT NULL,
    is_open BOOL NOT NULL DEFAULT true,
    utilization smallint NOT NULL DEFAULT 1,
    CHECK (utilization >= 1 AND utilization <=5)
);

CREATE TABLE IF NOT EXISTS departments (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    name text NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS rooms_have_departments (
    emergency_room_id UUID NOT NULL,
    department_id UUID NOT NULL,
    FOREIGN KEY (emergency_room_id)
        REFERENCES emergency_rooms(id)
        ON DELETE CASCADE,
    FOREIGN KEY (department_id)
        REFERENCES departments(id)
);

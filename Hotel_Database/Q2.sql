CREATE TABLE guest
(
    gid                SERIAL PRIMARY KEY,
    name               TEXT NOT NULL,
    credit_card_number BIGINT,
    email_address      TEXT,
    passport_number    TEXT NOT NULL,
    date_of_birth      DATE NOT NULL
);

CREATE TABLE packages
(
    name               TEXT PRIMARY KEY,
    breakfast_included BOOLEAN,
    access_pool        BOOLEAN,
    one_hour_massage   BOOLEAN
);

CREATE TABLE stays
(
    stid             SERIAL PRIMARY KEY,
    number_of_rooms  INT  NOT NULL,
    number_of_people INT  NOT NULL,
    checkin_date     DATE NOT NULL,
    checkout_date    DATE,
    gid              SERIAL REFERENCES guest
);

CREATE TABLE rooms
(
    room_number    INT     NOT NULL,
    room_capacity  INT     NOT NULL,
    number_of_beds INT     NOT NULL,
    daily_rate     INT     NOT NULL,
    type           TEXT,
    availability   BOOLEAN NOT NULL,
    stid           INT REFERENCES stays,
    name           TEXT REFERENCES packages,
    PRIMARY KEY    (room_number, stid)
);


CREATE TABLE vip_guest
(
    date_joined DATE NOT NULL,
    gid         INT REFERENCES guest
);

CREATE TABLE bills
(
    bid          SERIAL PRIMARY KEY,
    payment_type TEXT  NOT NULL,
    total_amount FLOAT NOT NULL,
    gid          INT REFERENCES guest
);

CREATE TABLE discount
(
    rate FLOAT NOT NULL,      -- a percentage of
    bid  INT REFERENCES bills,
    gid  INT REFERENCES guest -- can't reference vip
);


CREATE TABLE services
(
    sid  SERIAL PRIMARY KEY,
    stid SERIAL REFERENCES stays
);

CREATE TABLE restaurants
(
    name             TEXT PRIMARY KEY,
    price_per_person FLOAT NOT NULL,
    opening_hours    TIME  NOT NULL,
    closing_hours    TIME  NOT NULL
);

CREATE TABLE tables
(
    table_number    INT     NOT NULL,
    number_of_seats INT     NOT NULL,
    availability    BOOLEAN NOT NULL,
    sid             SERIAL REFERENCES services,
    name            TEXT REFERENCES restaurants,
    PRIMARY KEY (sid)
);

CREATE TABLE massage
(
    duration INT, -- in hours
    type     TEXT  NOT NULL,
    price    FLOAT NOT NULL,
    sid      INT REFERENCES services,
    PRIMARY KEY (sid)
);


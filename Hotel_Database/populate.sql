INSERT INTO restaurants (name, price_per_person, opening_hours, closing_hours)
VALUES ('The Grand Gourmet', 20.0, '8:00', '23:00');
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast-pool-massage', True, True, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast-pool', True, True, False);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast-massage', True, False, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast', True, False, False);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('pool-massage', False, True, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('pool', False, True, False);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('massage', False, False, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('standard', False, False, False);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('rejon rodriguez-montanez', 4013311524189892, 'rrodrig@gmail.com', 'JS122409', '1964-04-08');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (25, 5, '2020-05-02', 6);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 1, 1, 60, 'standard', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 3, 2, 200, 'deluxe', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (25, 3, 2, 120, 'premium', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (8, 1, 1, 60, 'standard', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 4, 2, 200, 'deluxe', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 4, 2, 200, 'deluxe', False, 1, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (19, 1, 1, 60, 'standard', False, 1, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 1, 1, 60, 'standard', False, 1, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (28, 1, 1, 60, 'standard', False, 1, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 1, 1, 200, 'deluxe', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 4, 2, 200, 'deluxe', False, 1, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (1, 1, 1, 120, 'premium', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 4, 2, 200, 'deluxe', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 1, 1, 120, 'premium', False, 1, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 2, 2, 120, 'premium', False, 1, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (18, 1, 1, 120, 'premium', False, 1, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (19, 3, 2, 120, 'premium', False, 1, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 2, 1, 120, 'premium', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (19, 2, 2, 120, 'premium', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 2, 1, 200, 'deluxe', False, 1, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 1, 1, 120, 'premium', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 2, 2, 200, 'deluxe', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 2, 2, 120, 'premium', False, 1, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 1, 1, 200, 'deluxe', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 2, 2, 200, 'deluxe', False, 1, 'pool');
INSERT INTO services (stid)
VALUES (1);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 1);
INSERT INTO services (stid)
VALUES (1);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 8, True, 2, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (1);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (6, 4, True, 3, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (1);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 6, True, 4, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (1);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (8, 6, True, 5, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (1);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 6, True, 6, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('euh walle', 4464740165103013720, 'ewall@hotmail.com', 'A719185', '1962-02-26');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 1, '2001-12-11', '2001-12-24', 7);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', True, 2, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (1, 1, 1, 60, 'standard', True, 2, 'breakfast-massage');
INSERT INTO services (stid)
VALUES (2);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 7);
INSERT INTO services (stid)
VALUES (2);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 8);
INSERT INTO services (stid)
VALUES (2);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 6, True, 9, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('cash', 1700.0, 7);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (1, 2, '2008-06-17', '2008-07-01', 7);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 4, 2, 200, 'deluxe', True, 3, 'breakfast');
INSERT INTO services (stid)
VALUES (3);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'standard', 10, 10);
INSERT INTO services (stid)
VALUES (3);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 11);
INSERT INTO services (stid)
VALUES (3);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 12);
INSERT INTO services (stid)
VALUES (3);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'premium', 25, 13);
INSERT INTO services (stid)
VALUES (3);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (14, 4, True, 14, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (3);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (6, 2, True, 15, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (3);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 4, True, 16, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (3);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (7, 2, True, 17, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (3);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 4, True, 18, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('credit_card', 3330.0, 7);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (1, 1, '2000-02-03', '2000-02-11', 7);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 4, 2, 200, 'deluxe', True, 4, 'breakfast-pool');
INSERT INTO services (stid)
VALUES (4);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 19);
INSERT INTO services (stid)
VALUES (4);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 20);
INSERT INTO services (stid)
VALUES (4);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 21);
INSERT INTO services (stid)
VALUES (4);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 22);
INSERT INTO services (stid)
VALUES (4);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 23);
INSERT INTO services (stid)
VALUES (4);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 6, True, 24, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (4);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (3, 8, True, 25, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('credit_card', 1910.0, 7);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('perrie sabja', 4506014690674924992, 'psabja@outlook.com', 'M74762187', '1976-07-29');
INSERT INTO vip_guest (date_joined, gid)
VALUES ('2010-12-29', 8);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (1, 1, '2005-05-31', '2005-06-01', 8);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', True, 5, 'massage');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 26);
INSERT INTO services (stid)
VALUES (5);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 27);
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 6, True, 28, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (7, 2, True, 29, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 2, True, 30, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (14, 4, True, 31, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 4, True, 32, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('credit_card', 308.05, 8);
INSERT INTO discount (rate, bid, gid)
VALUES (0.2, 4, 8);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 4, '2019-08-03', '2019-08-08', 8);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (29, 4, 2, 200, 'deluxe', True, 6, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 1, 1, 120, 'premium', True, 6, 'massage');
INSERT INTO services (stid)
VALUES (6);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 33);
INSERT INTO services (stid)
VALUES (6);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 34);
INSERT INTO services (stid)
VALUES (6);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 2, True, 35, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (6);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 2, True, 36, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('credit_card', 1387.36, 8);
INSERT INTO discount (rate, bid, gid)
VALUES (0.23, 5, 8);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('koichi grillette', 4496577639188958244, 'koichi.grillette@outlook.com', 'LO98836485', '1983-07-30');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (31, 5, '2021-02-08', 9);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 2, 1, 60, 'standard', False, 7, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 3, 2, 200, 'deluxe', False, 7, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 1, 1, 120, 'premium', False, 7, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (13, 1, 1, 60, 'standard', False, 7, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 2, 2, 200, 'deluxe', False, 7, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 4, 2, 200, 'deluxe', False, 7, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 1, 1, 60, 'standard', False, 7, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 3, 2, 120, 'premium', False, 7, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (28, 2, 1, 60, 'standard', False, 7, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 1, 1, 120, 'premium', False, 7, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 3, 2, 120, 'premium', False, 7, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 1, 1, 60, 'standard', False, 7, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 2, 1, 60, 'standard', False, 7, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 2, 2, 200, 'deluxe', False, 7, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (4, 1, 1, 120, 'premium', False, 7, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 3, 2, 120, 'premium', False, 7, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 1, 1, 200, 'deluxe', False, 7, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 2, 1, 120, 'premium', False, 7, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 1, 1, 60, 'standard', False, 7, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 3, 2, 200, 'deluxe', False, 7, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 3, 2, 120, 'premium', False, 7, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (9, 1, 1, 120, 'premium', False, 7, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 1, 1, 120, 'premium', False, 7, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 1, 1, 60, 'standard', False, 7, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 1, 1, 120, 'premium', False, 7, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 1, 1, 200, 'deluxe', False, 7, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 2, 1, 120, 'premium', False, 7, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 2, 1, 60, 'standard', False, 7, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (28, 2, 1, 60, 'standard', False, 7, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 1, 1, 60, 'standard', False, 7, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 1, 1, 60, 'standard', False, 7, 'breakfast-pool-massage');
INSERT INTO services (stid)
VALUES (7);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 37);
INSERT INTO services (stid)
VALUES (7);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 6, True, 38, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('amiliano suryan', 5252992458333058, 'amiliano94@outlook.com', 'T184519', '1994-11-04');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (12, 3, '2021-05-04', 10);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 3, 2, 200, 'deluxe', False, 8, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 2, 1, 120, 'premium', False, 8, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 3, 2, 200, 'deluxe', False, 8, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (13, 1, 1, 60, 'standard', False, 8, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 2, 2, 200, 'deluxe', False, 8, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 4, 2, 200, 'deluxe', False, 8, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (29, 2, 1, 60, 'standard', False, 8, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 3, 2, 120, 'premium', False, 8, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 1, 1, 200, 'deluxe', False, 8, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 1, 1, 120, 'premium', False, 8, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 2, 2, 120, 'premium', False, 8, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 3, 2, 120, 'premium', False, 8, 'breakfast-massage');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 2, True, 39, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (16, 2, True, 40, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (4, 8, True, 41, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 8, True, 42, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('allyna bridgforth', 345241506648467, 'abridg@gmail.com', 'MG7436285', '1963-12-12');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (13, 6, '2021-07-23', 11);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (13, 1, 1, 60, 'standard', False, 9, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (18, 3, 2, 120, 'premium', False, 9, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 2, 1, 60, 'standard', False, 9, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 4, 2, 200, 'deluxe', False, 9, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 2, 1, 60, 'standard', False, 9, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 1, 1, 120, 'premium', False, 9, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 3, 2, 120, 'premium', False, 9, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 200, 'deluxe', False, 9, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', False, 9, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 1, 1, 120, 'premium', False, 9, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 3, 2, 200, 'deluxe', False, 9, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (8, 4, 2, 200, 'deluxe', False, 9, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 1, 1, 200, 'deluxe', False, 9, 'pool-massage');
INSERT INTO services (stid)
VALUES (9);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 43);
INSERT INTO services (stid)
VALUES (9);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 44);
INSERT INTO services (stid)
VALUES (9);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 2, True, 45, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (9);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 4, True, 46, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('danaya lunter', 4337126987605, 'dlunter@gmail.com', 'PO7411644', '1998-12-10');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (10, 2, '2020-07-19', 12);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 1, 1, 120, 'premium', False, 10, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (18, 1, 1, 60, 'standard', False, 10, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (11, 1, 1, 120, 'premium', False, 10, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 3, 2, 200, 'deluxe', False, 10, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 2, 1, 120, 'premium', False, 10, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 3, 2, 200, 'deluxe', False, 10, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 1, 1, 200, 'deluxe', False, 10, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', False, 10, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 4, 2, 200, 'deluxe', False, 10, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 2, 1, 60, 'standard', False, 10, 'breakfast-pool-massage');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (4, 6, True, 47, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 4, True, 48, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 8, True, 49, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 4, True, 50, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 8, True, 51, 'The Grand Gourmet');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (3, 5, '2018-10-25', '2018-10-27', 12);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 1, 1, 60, 'standard', True, 11, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 2, 1, 60, 'standard', True, 11, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 1, 1, 60, 'standard', True, 11, 'pool');
INSERT INTO services (stid)
VALUES (11);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (7, 2, True, 52, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (11);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (6, 4, True, 53, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (11);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (6, 2, True, 54, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('credit_card', 660.0, 12);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('hubner ausman', 376562949414897, 'hubner.ausman@yahoo.com', 'E330167', '1992-07-12');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (8, 2, '2021-04-07', 13);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 2, 1, 60, 'standard', False, 12, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 3, 2, 200, 'deluxe', False, 12, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 1, 1, 120, 'premium', False, 12, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (8, 1, 1, 60, 'standard', False, 12, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 1, 1, 120, 'premium', False, 12, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 2, 1, 120, 'premium', False, 12, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 3, 2, 200, 'deluxe', False, 12, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 1, 1, 120, 'premium', False, 12, 'massage');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (1, 2, '2010-11-12', '2010-12-02', 13);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 1, 1, 60, 'standard', True, 13, 'breakfast-massage');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'premium', 25, 55);
INSERT INTO services (stid)
VALUES (13);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 56);
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (4, 2, True, 57, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 8, True, 58, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 8, True, 59, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 4, True, 60, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('debit_card', 1435.0, 13);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (14, 6, '2020-06-16', 13);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (28, 1, 1, 120, 'premium', False, 14, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 1, 1, 60, 'standard', False, 14, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 1, 1, 120, 'premium', False, 14, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (18, 4, 2, 200, 'deluxe', False, 14, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 2, 2, 120, 'premium', False, 14, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 2, 1, 60, 'standard', False, 14, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 2, 1, 120, 'premium', False, 14, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 3, 2, 120, 'premium', False, 14, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (8, 1, 1, 120, 'premium', False, 14, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (19, 2, 1, 60, 'standard', False, 14, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (3, 1, 1, 200, 'deluxe', False, 14, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 2, 2, 120, 'premium', False, 14, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 2, 2, 200, 'deluxe', False, 14, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 2, 1, 60, 'standard', False, 14, 'breakfast-pool-massage');
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 61);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 62);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 63);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 64);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (5, 8, True, 65, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (14);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (8, 4, True, 66, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (14);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 2, True, 67, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('sturmius merner', 4553635426460, 'sturmius83@gmail.com', 'GY46277185', '1983-11-17');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 1, '2018-03-17', '2018-03-17', 14);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (4, 3, 2, 200, 'deluxe', True, 15, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 1, 1, 60, 'standard', True, 15, 'massage');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 68);
INSERT INTO services (stid)
VALUES (15);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 69);
INSERT INTO services (stid)
VALUES (15);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 70);
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (4, 6, True, 71, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (14, 4, True, 72, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 8, True, 73, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 8, True, 74, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('debit_card', 330.0, 14);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('kreitzer dufford', 5498374469726896, 'kduffor@gmail.com', 'N8304612', '1972-05-21');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (3, 4, '2012-08-29', '2012-09-02', 15);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (8, 1, 1, 120, 'premium', True, 16, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 3, 2, 200, 'deluxe', True, 16, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 3, 2, 120, 'premium', True, 16, 'standard');
INSERT INTO services (stid)
VALUES (16);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 75);
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('debit_card', 1780, 15);
INSERT INTO restaurants (name, price_per_person, opening_hours, closing_hours)
VALUES ('The Grand Gourmet', 20.0, '8:00', '23:00');
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast-pool-massage', True, True, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast-pool', True, True, False);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast-massage', True, False, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('breakfast', True, False, False);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('pool-massage', False, True, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('pool', False, True, False);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('massage', False, False, True);
INSERT INTO packages (name, breakfast_included, access_pool, one_hour_massage)
VALUES ('standard', False, False, False);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('cula demoret', 4009194406008556, 'cdemo@gmail.com', 'FC39671994', '1983-05-27');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (32, 5, '2020-10-21', 6);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (3, 1, 1, 200, 'deluxe', False, 1, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 3, 2, 200, 'deluxe', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 1, 1, 120, 'premium', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 1, 1, 200, 'deluxe', False, 1, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (4, 1, 1, 120, 'premium', False, 1, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 1, 1, 60, 'standard', False, 1, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 1, 1, 60, 'standard', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 2, 1, 200, 'deluxe', False, 1, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 1, 1, 120, 'premium', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 2, 2, 200, 'deluxe', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 2, 1, 120, 'premium', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 3, 2, 200, 'deluxe', False, 1, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (11, 1, 1, 120, 'premium', False, 1, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 1, 1, 200, 'deluxe', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (8, 2, 1, 200, 'deluxe', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (18, 2, 2, 200, 'deluxe', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 1, 1, 120, 'premium', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 4, 2, 200, 'deluxe', False, 1, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 3, 2, 120, 'premium', False, 1, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 1, 1, 60, 'standard', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 1, 1, 120, 'premium', False, 1, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 1, 1, 60, 'standard', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 2, 1, 120, 'premium', False, 1, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 2, 2, 120, 'premium', False, 1, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 2, 2, 120, 'premium', False, 1, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 1, 1, 120, 'premium', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 1, 1, 60, 'standard', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (3, 2, 1, 120, 'premium', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (4, 4, 2, 200, 'deluxe', False, 1, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 2, 1, 60, 'standard', False, 1, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 1, 1, 60, 'standard', False, 1, 'standard');
INSERT INTO services (stid)
VALUES (1);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 1);
INSERT INTO services (stid)
VALUES (1);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 2);
INSERT INTO services (stid)
VALUES (1);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 3);
INSERT INTO services (stid)
VALUES (1);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'premium', 25, 4);
INSERT INTO services (stid)
VALUES (1);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 2, True, 5, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (1);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (14, 6, True, 6, 'The Grand Gourmet');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (3, 3, '2013-10-04', '2013-10-21', 6);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 3, 2, 120, 'premium', True, 2, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (1, 1, 1, 60, 'standard', True, 2, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 2, 2, 200, 'deluxe', True, 2, 'massage');
INSERT INTO services (stid)
VALUES (2);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 7);
INSERT INTO services (stid)
VALUES (2);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 8);
INSERT INTO services (stid)
VALUES (2);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 9);
INSERT INTO services (stid)
VALUES (2);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (6, 8, True, 10, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('cash', 6720.0, 6);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('koby-orezimena collibee', 4426783700011157451, 'kcoll@hotmail.com', 'Z40311455', '1971-07-19');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 4, '2008-07-15', '2008-07-26', 7);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (28, 4, 2, 200, 'deluxe', True, 3, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (9, 2, 1, 120, 'premium', True, 3, 'standard');
INSERT INTO services (stid)
VALUES (3);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 11);
INSERT INTO services (stid)
VALUES (3);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'standard', 10, 12);
INSERT INTO services (stid)
VALUES (3);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (4, 4, True, 13, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('debit_card', 3710.0, 7);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (9, 2, '2020-03-07', 7);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 3, 2, 200, 'deluxe', False, 4, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 2, 1, 60, 'standard', False, 4, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (1, 2, 1, 60, 'standard', False, 4, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (25, 2, 1, 60, 'standard', False, 4, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 2, 1, 60, 'standard', False, 4, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (29, 4, 2, 200, 'deluxe', False, 4, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 2, 1, 60, 'standard', False, 4, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 2, 1, 60, 'standard', False, 4, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 4, 2, 200, 'deluxe', False, 4, 'pool-massage');
INSERT INTO services (stid)
VALUES (4);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 8, True, 14, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (4);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 2, True, 15, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (4);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 2, True, 16, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('cynde bocicault', 372217788407717, 'cbocic@hotmail.com', 'X1705552', '1977-05-26');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (16, 2, '2020-08-11', 8);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (13, 2, 2, 120, 'premium', False, 5, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 1, 1, 120, 'premium', False, 5, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 1, 1, 200, 'deluxe', False, 5, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 1, 1, 120, 'premium', False, 5, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 2, 2, 120, 'premium', False, 5, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 3, 2, 200, 'deluxe', False, 5, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 2, 2, 200, 'deluxe', False, 5, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 4, 2, 200, 'deluxe', False, 5, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 4, 2, 200, 'deluxe', False, 5, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 2, 1, 60, 'standard', False, 5, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 2, 1, 60, 'standard', False, 5, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 4, 2, 200, 'deluxe', False, 5, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 2, 1, 120, 'premium', False, 5, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (18, 1, 1, 120, 'premium', False, 5, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 3, 2, 120, 'premium', False, 5, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 2, 2, 120, 'premium', False, 5, 'pool');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 17);
INSERT INTO services (stid)
VALUES (5);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 18);
INSERT INTO services (stid)
VALUES (5);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 19);
INSERT INTO services (stid)
VALUES (5);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 20);
INSERT INTO services (stid)
VALUES (5);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 21);
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 4, True, 22, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 6, True, 23, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 4, True, 24, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (3, 4, True, 25, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (5);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (8, 2, True, 26, 'The Grand Gourmet');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 6, '2021-04-06', '2021-04-16', 8);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 2, 1, 60, 'standard', True, 6, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 2, 2, 120, 'premium', True, 6, 'breakfast');
INSERT INTO services (stid)
VALUES (6);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 27);
INSERT INTO services (stid)
VALUES (6);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 28);
INSERT INTO services (stid)
VALUES (6);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 4, True, 29, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (6);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 8, True, 30, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (6);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (5, 4, True, 31, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (6);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (6, 8, True, 32, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (6);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 6, True, 33, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('credit_card', 2445.0, 8);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('jewell isales', 4685330198515516, 'jisale@hotmail.com', 'SB043994', '1998-04-23');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (11, 4, '2021-07-20', 9);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (19, 2, 2, 200, 'deluxe', False, 7, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 2, 1, 60, 'standard', False, 7, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 2, 1, 120, 'premium', False, 7, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (29, 3, 2, 200, 'deluxe', False, 7, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (18, 1, 1, 120, 'premium', False, 7, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 1, 1, 120, 'premium', False, 7, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (25, 1, 1, 120, 'premium', False, 7, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 4, 2, 200, 'deluxe', False, 7, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 2, 1, 60, 'standard', False, 7, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (11, 4, 2, 200, 'deluxe', False, 7, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 1, 1, 120, 'premium', False, 7, 'breakfast-pool');
INSERT INTO services (stid)
VALUES (7);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'premium', 25, 34);
INSERT INTO services (stid)
VALUES (7);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 35);
INSERT INTO services (stid)
VALUES (7);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (8, 4, True, 36, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (7);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (8, 8, True, 37, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (7);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 2, True, 38, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (7);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (7, 8, True, 39, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (7);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 6, True, 40, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('handerson pebbles', 379850169142472, 'handerson86@gmail.com', 'UY58749821', '1986-05-25');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 6, '2004-12-27', '2004-12-27', 10);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 1, 1, 60, 'standard', True, 8, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 4, 2, 200, 'deluxe', True, 8, 'pool-massage');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 41);
INSERT INTO services (stid)
VALUES (8);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 42);
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 4, True, 43, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 6, True, 44, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (5, 6, True, 45, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (8);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 4, True, 46, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('debit_card', 630.0, 10);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (4, 5, '2014-03-25', '2014-04-05', 10);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (9, 2, 1, 60, 'standard', True, 9, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 1, 1, 60, 'standard', True, 9, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 2, 1, 120, 'premium', True, 9, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 3, 2, 120, 'premium', True, 9, 'pool-massage');
INSERT INTO services (stid)
VALUES (9);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 47);
INSERT INTO services (stid)
VALUES (9);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 48);
INSERT INTO services (stid)
VALUES (9);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 6, True, 49, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (9);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 8, True, 50, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('debit_card', 4410.0, 10);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('roniah telles', 371511876658194, 'rtell@hotmail.com', 'L249589', '1964-06-01');
INSERT INTO vip_guest (date_joined, gid)
VALUES ('2013-11-22', 11);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (1, 5, '2021-02-02', 11);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (21, 1, 1, 60, 'standard', False, 10, 'breakfast-massage');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 51);
INSERT INTO services (stid)
VALUES (10);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 52);
INSERT INTO services (stid)
VALUES (10);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 53);
INSERT INTO services (stid)
VALUES (10);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 54);
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 2, True, 55, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (2, 4, True, 56, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (13, 8, True, 57, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (10);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (7, 4, True, 58, 'The Grand Gourmet');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (2, 2, '2021-08-09', 11);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', False, 11, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (32, 3, 2, 200, 'deluxe', False, 11, 'breakfast-pool-massage');
INSERT INTO services (stid)
VALUES (11);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'standard', 10, 59);
INSERT INTO services (stid)
VALUES (11);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 60);
INSERT INTO services (stid)
VALUES (11);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 61);
INSERT INTO services (stid)
VALUES (11);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 62);
INSERT INTO services (stid)
VALUES (11);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 63);
INSERT INTO services (stid)
VALUES (11);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 8, True, 64, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (11);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 4, True, 65, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (11);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (3, 2, True, 66, 'The Grand Gourmet');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (30, 1, '2020-04-05', 11);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 3, 2, 120, 'premium', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 4, 2, 200, 'deluxe', False, 12, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 2, 2, 120, 'premium', False, 12, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', False, 12, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 2, 1, 120, 'premium', False, 12, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 3, 2, 120, 'premium', False, 12, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 2, 1, 60, 'standard', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (19, 2, 2, 200, 'deluxe', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 2, 1, 120, 'premium', False, 12, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 4, 2, 200, 'deluxe', False, 12, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (16, 4, 2, 200, 'deluxe', False, 12, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (3, 2, 1, 120, 'premium', False, 12, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 1, 1, 120, 'premium', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 1, 1, 60, 'standard', False, 12, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (25, 1, 1, 60, 'standard', False, 12, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 1, 1, 60, 'standard', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 2, 2, 120, 'premium', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (1, 2, 1, 60, 'standard', False, 12, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 2, 1, 200, 'deluxe', False, 12, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 1, 1, 60, 'standard', False, 12, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 2, 1, 200, 'deluxe', False, 12, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (3, 2, 1, 60, 'standard', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 1, 1, 200, 'deluxe', False, 12, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 2, 1, 60, 'standard', False, 12, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (13, 4, 2, 200, 'deluxe', False, 12, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 1, 1, 60, 'standard', False, 12, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 1, 1, 200, 'deluxe', False, 12, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 1, 1, 60, 'standard', False, 12, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (28, 1, 1, 200, 'deluxe', False, 12, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 1, 1, 60, 'standard', False, 12, 'breakfast-massage');
INSERT INTO services (stid)
VALUES (12);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 67);
INSERT INTO services (stid)
VALUES (12);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 68);
INSERT INTO services (stid)
VALUES (12);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 69);
INSERT INTO services (stid)
VALUES (12);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 6, True, 70, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (12);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (8, 8, True, 71, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (12);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 8, True, 72, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (12);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 4, True, 73, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (12);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 4, True, 74, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('wenonah veatch', 4619812366464, 'wenonah75@yahoo.com', 'H5103458', '1975-07-07');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 5, '2001-01-27', '2001-02-08', 12);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 1, 1, 120, 'premium', True, 13, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 2, 1, 60, 'standard', True, 13, 'standard');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'standard', 10, 75);
INSERT INTO services (stid)
VALUES (13);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 76);
INSERT INTO services (stid)
VALUES (13);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 77);
INSERT INTO services (stid)
VALUES (13);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'standard', 10, 78);
INSERT INTO services (stid)
VALUES (13);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 79);
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (10, 2, True, 80, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (3, 8, True, 81, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (14, 4, True, 82, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (8, 6, True, 83, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (13);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 6, True, 84, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('cash', 3085.0, 12);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (3, 5, '2020-03-10', 12);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (9, 2, 1, 120, 'premium', False, 14, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 3, 2, 200, 'deluxe', False, 14, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (29, 1, 1, 120, 'premium', False, 14, 'pool-massage');
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 85);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'premium', 25, 86);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 87);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO massage (duration, type, price, sid)
VALUES (2, 'deluxe', 50, 88);
INSERT INTO services (stid)
VALUES (14);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (5, 4, True, 89, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (14);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 4, True, 90, 'The Grand Gourmet');
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('tesheena alicuben', 349641601823268, 'talicub@gmail.com', 'MW9139460', '1980-11-23');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, gid)
VALUES (29, 3, '2021-04-28', 13);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (4, 2, 2, 200, 'deluxe', False, 15, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (2, 2, 1, 60, 'standard', False, 15, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 1, 1, 120, 'premium', False, 15, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (22, 4, 2, 200, 'deluxe', False, 15, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (28, 3, 2, 120, 'premium', False, 15, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 1, 1, 120, 'premium', False, 15, 'breakfast');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (17, 3, 2, 120, 'premium', False, 15, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (5, 1, 1, 60, 'standard', False, 15, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (24, 2, 1, 120, 'premium', False, 15, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 1, 1, 60, 'standard', False, 15, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 1, 1, 60, 'standard', False, 15, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (23, 4, 2, 200, 'deluxe', False, 15, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 1, 1, 120, 'premium', False, 15, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (31, 1, 1, 200, 'deluxe', False, 15, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (4, 2, 1, 60, 'standard', False, 15, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 1, 1, 60, 'standard', False, 15, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (7, 3, 2, 200, 'deluxe', False, 15, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (27, 2, 1, 200, 'deluxe', False, 15, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (13, 3, 2, 120, 'premium', False, 15, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (29, 4, 2, 200, 'deluxe', False, 15, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (0, 4, 2, 200, 'deluxe', False, 15, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (20, 1, 1, 200, 'deluxe', False, 15, 'pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 2, 1, 60, 'standard', False, 15, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 2, 2, 120, 'premium', False, 15, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (30, 2, 1, 200, 'deluxe', False, 15, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 1, 1, 120, 'premium', False, 15, 'standard');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 3, 2, 120, 'premium', False, 15, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (25, 2, 2, 120, 'premium', False, 15, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 3, 2, 120, 'premium', False, 15, 'breakfast-pool');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'standard', 10, 91);
INSERT INTO services (stid)
VALUES (15);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'premium', 25, 92);
INSERT INTO services (stid)
VALUES (15);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'standard', 10, 93);
INSERT INTO services (stid)
VALUES (15);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'standard', 10, 94);
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 6, True, 95, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (5, 2, True, 96, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 6, True, 97, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (15);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (6, 6, True, 98, 'The Grand Gourmet');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 3, '2000-05-25', '2000-06-01', 13);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (15, 2, 1, 60, 'standard', True, 16, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (12, 2, 1, 120, 'premium', True, 16, 'breakfast-pool');
INSERT INTO services (stid)
VALUES (16);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (2, 8, True, 99, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (16);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 2, True, 100, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (16);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 6, True, 101, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (16);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (14, 4, True, 102, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('cash', 1500.0, 13);
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 1, '2007-09-16', '2007-09-26', 13);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (14, 4, 2, 200, 'deluxe', True, 17, 'breakfast-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (1, 2, 1, 60, 'standard', True, 17, 'standard');
INSERT INTO services (stid)
VALUES (17);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (3, 8, True, 103, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (17);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (12, 6, True, 104, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (17);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (11, 4, True, 105, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (17);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (15, 8, True, 106, 'The Grand Gourmet');
INSERT INTO services (stid)
VALUES (17);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (1, 8, True, 107, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('cash', 2700.0, 13);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('bishesh hoey', 4360689347361, 'bishesh66@yahoo.com', 'UI653035', '1966-12-12');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (2, 5, '2004-11-25', '2004-12-03', 14);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (13, 3, 2, 200, 'deluxe', True, 18, 'breakfast-pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (11, 1, 1, 200, 'deluxe', True, 18, 'breakfast');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('debit_card', 3200, 14);
INSERT INTO guest (name, credit_card_number, email_address, passport_number, date_of_birth)
VALUES ('gautham magedanz', 4155243503467, 'gmage@hotmail.com', 'L3845451', '1996-02-13');
INSERT INTO stays (number_of_rooms, number_of_people, checkin_date, checkout_date, gid)
VALUES (4, 1, '2007-06-14', '2007-07-02', 15);
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (26, 1, 1, 120, 'premium', True, 19, 'massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 3, 2, 120, 'premium', True, 19, 'breakfast-pool');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (10, 2, 1, 60, 'standard', True, 19, 'pool-massage');
INSERT INTO rooms (room_number, room_capacity, number_of_beds, daily_rate, type, availability, stid, name)
VALUES (6, 3, 2, 200, 'deluxe', True, 19, 'breakfast');
INSERT INTO services (stid)
VALUES (19);
INSERT INTO massage (duration, type, price, sid)
VALUES (3, 'deluxe', 50, 108);
INSERT INTO services (stid)
VALUES (19);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'standard', 10, 109);
INSERT INTO services (stid)
VALUES (19);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 110);
INSERT INTO services (stid)
VALUES (19);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'premium', 25, 111);
INSERT INTO services (stid)
VALUES (19);
INSERT INTO massage (duration, type, price, sid)
VALUES (1, 'deluxe', 50, 112);
INSERT INTO services (stid)
VALUES (19);
INSERT INTO tables (table_number, number_of_seats, availability, sid, name)
VALUES (9, 6, True, 113, 'The Grand Gourmet');
INSERT INTO bills (payment_type, total_amount, gid)
VALUES ('credit_card', 9305.0, 15);

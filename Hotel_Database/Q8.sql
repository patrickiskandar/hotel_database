ALTER TABLE stays ADD CHECK (number_of_rooms > 0), ADD CHECK (number_of_people > 0);

ALTER TABLE rooms ADD CHECK (room_capacity > 0), ADD CHECK (room_capacity <= 4), ADD CHECK (number_of_beds > 0), ADD CHECK (number_of_beds <= 2), ADD CHECK (daily_rate >= 60), ADD CHECK (daily_rate <= 200);

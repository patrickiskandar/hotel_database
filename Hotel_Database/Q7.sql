/*VIEW 1 : Creating Guest Services "guest_services". // All previous tables are temporary tables that will lead
to our final VIEW "guest_services"*/


CREATE VIEW stay_ids AS
SELECT DISTINCT st.gid, st.stid, s.sid
FROM stays st,
     services s
WHERE s.stid = st.stid
;

CREATE VIEW table_services_ids AS
SELECT DISTINCT s.sid, t.table_number, t.number_of_seats, t.availability, t.name
FROM services s,
     tables t
WHERE s.sid = t.sid
;

CREATE VIEW massage_services_ids AS
SELECT DISTINCT s.sid, m.duration, m.type, m.price
FROM services s,
     massage m
WHERE s.sid = m.sid
;


CREATE VIEW temp1 AS
SELECT t.sid,
       t.table_number,
       t.number_of_seats,
       t.availability,
       t.name,
       null as duration,
       null as type,
       null as price
FROM table_services_ids t
UNION ALL
SELECT m.sid,
       null as col1,
       null as col2,
       null as col3,
       null as col4,
       m.duration,
       m.type,
       m.price
FROM massage_services_ids m
;


-- ALL OF THE VIEWS CREATED ABOVE ARE NEEDED FOR THIS ONE WHICH IS OUR VIEW 1:
CREATE VIEW guest_services AS
SELECT stay_ids.gid,
       t.table_number,
       number_of_seats,
       availability,
       name,
       duration,
       type,
       price
FROM stay_ids
         FULL JOIN temp1 t on stay_ids.sid = t.sid
;

SELECT * FROM guest_services;

------------------------------------------------------------------------------------------------------------------------------------
CREATE VIEW tempA AS
SELECT rooms.room_number, s.gid
FROM rooms
         JOIN stays s on rooms.stid = s.stid
;

CREATE VIEW booked_rooms AS
SELECT tempA.room_number, g.name, g.email_address
FROM tempA
         JOIN guest g on tempA.gid = g.gid
;

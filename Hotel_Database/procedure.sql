CREATE OR REPLACE FUNCTION most_profitable_stays(threshold FLOAT)
    RETURNS VOID AS
$$
DECLARE
    DECLARE
    a              RECORD;
    stay_number    INT;
    DECLARE amount FLOAT;


BEGIN

    FOR a IN select stid from services
        LOOP

            SELECT q.stid, q.total_spent
            FROM (
                     SELECT stid, sum(k.massage_dollar_amount) AS total_spent
                     FROM (
                              SELECT *
                              FROM (SELECT stid, sum(total_price) AS massage_dollar_amount
                                    FROM services sv
                                             JOIN (
                                        SELECT sid, (price * duration) AS total_price
                                        FROM massage
                                        GROUP BY sid) k ON k.sid = sv.sid
                                    GROUP BY stid
                                    ORDER BY stid) p1
                              UNION
                              SELECT *
                              FROM (SELECT stid, (times_used * number_of_people * price_per_person) AS total_resto_spent
                                    FROM (
                                             SELECT st.stid,
                                                    COUNT(st.stid) AS times_used,
                                                    number_of_people,
                                                    price_per_person
                                             FROM stays st
                                                      JOIN (
                                                 SELECT s.stid, k.sid, k.price_per_person
                                                 FROM services s
                                                          JOIN (
                                                     SELECT sid, price_per_person
                                                     FROM tables t
                                                              JOIN restaurants r ON t.name = r.name) k
                                                               ON k.sid = s.sid) m
                                                           ON m.stid = st.stid
                                             GROUP BY st.stid, number_of_people, price_per_person) f
                                    GROUP BY stid, (times_used * number_of_people * price_per_person)
                                    ORDER BY stid) p2) k
                     GROUP BY k.stid
                     ORDER BY k.stid) q
            WHERE q.stid = a.stid
            INTO stay_number, amount;
            IF amount > threshold THEN
                UPDATE stays SET most_profitable = TRUE WHERE stid = a.stid;
            ELSE
                UPDATE stays SET most_profitable = FALSE WHERE stid = a.stid;
            END IF;
        END LOOP;
END;


$$
    LANGUAGE plpgsql;

DROP FUNCTION most_profitable_stays(threshold FLOAT)
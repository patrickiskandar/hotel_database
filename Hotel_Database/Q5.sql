SELECT COUNT(gid) FROM guest;

SELECT gid, date_joined
FROM vip_guest
WHERE gid IN (
	SELECT gid
	FROM stays
	WHERE checkout_date IS NULL
	);

SELECT SUM(b.total_amount)
FROM stays s, bills b
WHERE s.gid = b.gid AND s.checkin_date >= '01/01/2020';

SELECT SUM(number_of_people) FROM stays
WHERE checkout_date IS NULL;

SELECT gid, email_address
FROM guest
WHERE gid IN (
	SELECT gid
	FROM stays t, services s
	WHERE s.stid = t.stid
	);

-- Dany Stefan wants to change his email to and his 
-- credit card number to dany420@yahoo.com and 
-- 342973516848245 respectively
UPDATE guest 
SET email_address = 'dany420@yahoo.com', credit_card_number = 342973516848245
WHERE name = 'Dany Stefan';

-- The hotel has had a bed bug infestation! We want to
-- upgrade all current guest's rooms to include a full package 
-- (i.e.: the breakfast-pool-massage package) as compensation
UPDATE rooms
SET name = 'breakfast-pool-massage'
WHERE stid IN (
    SELECT stid
    FROM stays
    WHERE checkout_date IS NULL
);

-- To pay less taxes, our hotel wants to underestimate our revenues. We 
-- retroactively reduce all bills over 2000$ by 50%.
UPDATE bills
SET total_amount = 0.5 * total_amount
WHERE bid IN (
    SELECT bid
    FROM bills
    WHERE total_amount > 2000
);

-- Google has just bought Yahoo emails! All @yahoo.com email addresses
-- have been changed to @gmail.com addresses. We must update our records
-- so that guests can still receive our advertisement.
UPDATE guest
SET email_address = SUBSTRING(
    email_address FROM 0 FOR POSITION('@' IN email_address)
) || '@gmail.com'
WHERE email_address SIMILAR TO '%@yahoo.com';
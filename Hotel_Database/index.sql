-- Index on most_profitable given that we the majority would be set to false. Threshold was set to 300

CREATE INDEX profitable_index ON stays (most_profitable);
CLUSTER stays USING profitable_index;
-- Index on checkout_date given that we the majority of our rooms are booked.
CREATE INDEX checked_out_rooms ON stays (checkout_date);
CLUSTER stays USING checked_out_rooms;


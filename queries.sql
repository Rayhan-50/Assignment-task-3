USE vehicle_rental_system;

-- 1. JOIN Query: Fetch booking details along with user and vehicle information
-- This query retrieves the booking ID, user's name, user's email, vehicle name, vehicle model, and total cost for al bookings.
SELECT 
    b.booking_id,
    u.name AS user_name,
    u.email AS user_email,
    v.name AS vehicle_name,
    v.model AS vehicle_model,
    b.start_date,
    b.end_date,
    b.total_cost
FROM Bookings b
JOIN Users u ON b.user_id = u.user_id
JOIN Vehicles v ON b.vehicle_id = v.vehicle_id;

-- 2. EXISTS Query: Find vehicles that have never been booked
-- This query selects all vehicles for which there is no corresponding record in the Bookings table.
SELECT * 
FROM Vehicles v
WHERE NOT EXISTS (
    SELECT 1 
    FROM Bookings b 
    WHERE b.vehicle_id = v.vehicle_id
);

-- 3. WHERE Query: Find all available cars
-- This query filters the Vehicles table to show only vehicles that are of type 'car' and have a status of 'available'.
SELECT * 
FROM Vehicles 
WHERE type = 'car' 
  AND status = 'available';

-- 4. GROUP BY + HAVING Query: Count bookings per user
-- This query groups bookings by user and counts them. It uses HAVING to filter (e.g., users with at least 1 booking).
-- Here we just show users with 2 or more bookings as an example of HAVING, or just 1. 
-- The requirement is "GROUP BY + HAVING query for booking count".
SELECT 
    u.name,
    COUNT(b.booking_id) AS total_bookings
FROM Users u
JOIN Bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name
HAVING total_bookings >= 1;

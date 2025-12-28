USE vehicle_rental_system;

--  JOIN Query
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

--  EXISTS Query
SELECT * 
FROM Vehicles v
WHERE NOT EXISTS (
    SELECT 1 
    FROM Bookings b 
    WHERE b.vehicle_id = v.vehicle_id
);

--  WHERE Query: Find all available cars

SELECT * 
FROM Vehicles 
WHERE type = 'car' 
  AND status = 'available';

-- 4. GROUP BY + HAVING Query: Count bookings per user

SELECT 
    u.name,
    COUNT(b.booking_id) AS total_bookings
FROM Users u
JOIN Bookings b ON u.user_id = b.user_id
GROUP BY u.user_id, u.name
HAVING total_bookings >= 1;

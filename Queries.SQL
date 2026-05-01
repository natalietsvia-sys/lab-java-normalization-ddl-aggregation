-- Total number of flights
SELECT COUNT(DISTINCT flight_number) AS total_flights
FROM flights;

-- Average flight distance
SELECT AVG(flight_mileage) AS average_flight_distance
FROM flights;

-- Average number of seats per aircraft
SELECT AVG(total_aircraft_seats) AS average_seats
FROM aircrafts;

-- Average miles flown by customers, grouped by status
SELECT customer_status, AVG(total_customer_mileage) AS average_customer_mileage
FROM customers
GROUP BY customer_status;

-- Max miles flown by customers, grouped by status
SELECT customer_status, MAX(total_customer_mileage) AS max_customer_mileage
FROM customers
GROUP BY customer_status;

-- Number of aircrafts with "Boeing" in their name
SELECT COUNT(*) AS boeing_aircraft_count
FROM aircrafts
WHERE aircraft_name LIKE '%Boeing%';

-- Flights with distance between 300 and 2000 miles
SELECT *
FROM flights
WHERE flight_mileage BETWEEN 300 AND 2000;

-- Average flight distance booked, grouped by customer status
SELECT c.customer_status, AVG(f.flight_mileage) AS average_booked_flight_distance
FROM bookings b
JOIN customers c
    ON b.customer_id = c.customer_id
JOIN flights f
    ON b.flight_number = f.flight_number
GROUP BY c.customer_status;

-- Most booked aircraft among Gold status members
SELECT a.aircraft_name, COUNT(*) AS total_bookings
FROM bookings b
JOIN customers c
    ON b.customer_id = c.customer_id
JOIN flights f
    ON b.flight_number = f.flight_number
JOIN aircrafts a
    ON f.aircraft_id = a.aircraft_id
WHERE c.customer_status = 'Gold'
GROUP BY a.aircraft_name
ORDER BY total_bookings DESC
LIMIT 1;

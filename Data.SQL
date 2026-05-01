INSERT INTO aircrafts (aircraft_id, aircraft_name, total_aircraft_seats) VALUES
(1, 'Boeing 747', 400),
(2, 'Airbus A330', 236),
(3, 'Boeing 777', 264);

INSERT INTO customers (customer_id, customer_name, customer_status, total_customer_mileage) VALUES
(1, 'Agustine Riviera', 'Silver', 115235),
(2, 'Alaina Sepulvida', 'None', 6008),
(3, 'Tom Jones', 'Gold', 205767),
(4, 'Sam Rio', 'None', 2653),
(5, 'Jessica James', 'Silver', 127656),
(6, 'Ana Janco', 'Silver', 136773),
(7, 'Jennifer Cortez', 'Gold', 300582),
(8, 'Christian Janco', 'Silver', 14642);

INSERT INTO flights (flight_number, aircraft_id, flight_mileage) VALUES
('DL143', 1, 135),
('DL122', 2, 4370),
('DL53', 3, 2078),
('DL222', 3, 1765),
('DL37', 1, 531);

INSERT INTO bookings (booking_id, customer_id, flight_number) VALUES
(1, 1, 'DL143'),
(2, 1, 'DL122'),
(3, 2, 'DL122'),
(4, 3, 'DL122'),
(5, 3, 'DL53'),
(6, 3, 'DL222'),
(7, 4, 'DL143'),
(8, 4, 'DL37'),
(9, 5, 'DL143'),
(10, 5, 'DL122'),
(11, 6, 'DL222'),
(12, 7, 'DL222'),
(13, 8, 'DL222');

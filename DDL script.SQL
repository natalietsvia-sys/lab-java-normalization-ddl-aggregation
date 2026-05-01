CREATE TABLE aircrafts (
    aircraft_id INT PRIMARY KEY,
    aircraft_name VARCHAR(50) NOT NULL,
    total_aircraft_seats INT NOT NULL
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_status VARCHAR(20) NOT NULL,
    total_customer_mileage INT NOT NULL
);

CREATE TABLE flights (
    flight_number VARCHAR(10) PRIMARY KEY,
    aircraft_id INT NOT NULL,
    flight_mileage INT NOT NULL,

    CONSTRAINT fk_flights_aircrafts
        FOREIGN KEY (aircraft_id)
        REFERENCES aircrafts(aircraft_id)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    flight_number VARCHAR(10) NOT NULL,

    CONSTRAINT fk_bookings_customers
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_bookings_flights
        FOREIGN KEY (flight_number)
        REFERENCES flights(flight_number),

    CONSTRAINT uq_customer_flight
        UNIQUE (customer_id, flight_number)
);

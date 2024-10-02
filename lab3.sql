--LAB3
--1
SELECT * FROM passengers WHERE first_name = last_name;
--2
SELECT DISTINCT last_name FROM passengers;
--3
SELECT * FROM passengers WHERE gender = 'Male'AND EXTRACT(YEAR FROM date_of_birth)  >= 1990 AND EXTRACT(YEAR FROM date_of_birth) <= 2000;
--4
SELECT ticket_price , EXTRACT(MONTH FROM created_at) AS month from booking order by month, ticket_price;
--5
SELECT flight_id, sch_departure_time,sch_arrival_time, airport_name ,city, country
FROM flights
JOIN airport ON arriving_airport_id = airport_id
WHERE country = 'China';
--6
SELECT * FROM airline WHERE airline_country = 'Kazakhstan';
--7
update booking set ticket_price = ticket_price*0.9 where created_at < '2010-12-12 00:00:00';
--8
select baggage_id, weight_in_kg, booking_id from baggage where weight_in_kg > 25.00 order by weight_in_kg desc limit 3;
--9
select first_name ,date_of_birth  from passengers order by date_of_birth desc limit 1;
--10
select booking_platform, MIN(booking.ticket_price) from booking group by booking_platform;
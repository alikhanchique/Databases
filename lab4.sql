--lab4
--1
SELECT UPPER(airline.airline_name) FROM airline;
--2
UPDATE airline SET airline_name = replace(airline_name, 'Air', 'Aero') where airline_name like '%Air%';;
SELECT * FROM airline;
--3
SELECT flight_id FROM flights WHERE airline_id = 1
INTERSECT
SELECT flight_id FROM flights WHERE airline_id = 2;
--4
(SELECT airport_name FROM airport WHERE airport_name LIKE 'Air%')
union (SELECT airport_name FROM airport WHERE airport_name LIKE 'Reginal%');

insert into airport(airport_id, airport_name, country, state, city, created_at, updated_at)
values(1078,'Reginal Shymkent','Kz','Turk obl','CIT', '2022-07-14 07:48:37', '2022-05-06 16:59:30');
insert into airport(airport_id, airport_name, country, state, city, created_at, updated_at)
values(1054,'Air Shymkent','Kz','Turk obl','CIT', '2022-08-14 07:48:37', '2022-05-06 16:59:30');

--5
SELECT first_name , EXTRACT(MONTH FROM date_of_birth) || ' ' || EXTRACT(DAYS FROM passengers.date_of_birth) || ' ' || EXTRACT(YEAR FROM passengers.date_of_birth) AS BIRTHDATES FROM passengers;

--6
SELECT COUNT(flight_id) FROM flights WHERE sch_arrival_time != act_arrival_time;
--7
SELECT
    first_name ,
    date_of_birth ,
    2024 - EXTRACT(YEAR FROM date_of_birth) AS AGE,
CASE
    WHEN 2024 - EXTRACT(YEAR FROM date_of_birth) > 18 AND 2024 - EXTRACT(YEAR FROM date_of_birth) <= 35 THEN 'YOUNG'
    WHEN  2024 - EXTRACT(YEAR FROM date_of_birth) > 36 AND 2024 - EXTRACT(YEAR FROM date_of_birth) < 55 THEN 'ADULT'
    ELSE 'RETIRE'
END AS AGE_GROUP
FROM PASSENGERS;
--8
SELECT
    booking.ticket_price,
    CASE
        WHEN booking.ticket_price > 400 THEN 'EXPENSIVE'
        WHEN booking.ticket_price > 200 AND booking.ticket_price <= 400 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS PRICE_CATEGORY
FROM booking;
--9
SELECT airline_country, COUNT(airline_name) AS number_of_airlines FROM airline GROUP BY airline_country;
--10
SELECT flight_id FROM flights WHERE sch_arrival_time != act_arrival_time;

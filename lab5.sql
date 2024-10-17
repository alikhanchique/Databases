--lab5
--1
ALTER TABLE passengers
ADD CONSTRAINT check_age CHECK(
    extract(YEAR FROM date_of_birth) < 2014
    );
--2
ALTER TABLE booking
ADD CONSTRAINT CHECK_PRICE CHECK(
    ticket_price BETWEEN 0 AND 50000
    );
--3
update baggage set weight_in_kg = 23.00 where weight_in_kg > 23.00;
update baggage set weight_in_kg = 1.00 where weight_in_kg < 1.00;


ALTER TABLE baggage
ADD CONSTRAINT CHECK_WEIGHT CHECK(
    weight_in_kg >= 1.00 AND weight_in_kg <= 23.00
    );
--4
alter table airport
add constraint check_name check(
    length(airport_name) >= 10
    );
--5
alter table airline
add constraint unique_code unique(airline_code);

alter table airport
add constraint unique_id unique(airport_id);

alter table baggage
add constraint unique__booking_id unique(baggage_id);

alter table baggage_check
add constraint unique__pass_id unique(passenger_id);

alter table boarding_pass
add constraint unique_bookingg__id unique(booking_id);

alter table booking
add constraint unique___book_id unique(booking_id);

alter table booking_flight
add constraint unique_booking_id unique(booking_id);

alter table flights
add constraint unique_flight__id unique (flight_id);

alter table passengers
add constraint unique_passen_id unique(passenger_id);

alter table security_check
add constraint unique_securityid unique(security_check_id);

--6
alter table passengers
add constraint check_age_gender check(
    (gender = 'Male' and extract(year from date_of_birth) <= 2006) or
    (gender = 'Female' and extract(year from date_of_birth) <= 2005)
    );
--7\

alter table passengers
add constraint check_age_country check(
    (country_of_citizenship = 'Kazakhstan' and extract(year from date_of_birth) <= 2006) or
    (country_of_citizenship = 'France' and extract(year from date_of_birth) <= 2007) or
    (country_of_citizenship != 'Kazakhstan' AND country_of_citizenship != 'France' AND extract(year from date_of_birth) <= 2005)
    );

--8
alter table booking
add ticket_discount int , add constraint check_date check(
    case
        when created_at >= '2024-01-01 00:00:00' then ticket_discount = 5
        when created_at < '2024-01-01 00:00:00' then ticket_discount = 10
        else ticket_discount = 0
    end
    )
;
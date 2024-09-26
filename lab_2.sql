-- lab2
--1.1
ALTER TABLE booking ADD CONSTRAINT booking___fk FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id);
ALTER TABLE security_check ADD CONSTRAINT security_check___FK FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id);
ALTER TABLE baggage_check ADD CONSTRAINT baggage_check___fk FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id);
ALTER TABLE Baggage_check ADD CONSTRAINT Baggage_check___fk_2 FOREIGN KEY (booking_id) REFERENCES booking(booking_id);
--1.2
ALTER TABLE Baggage ADD CONSTRAINT fk_booking_baggage FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);
ALTER TABLE Boarding_pass ADD CONSTRAINT fk_booking_boarding_pass FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);
ALTER TABLE Booking_flight ADD CONSTRAINT fk_booking_flight FOREIGN KEY (booking_id) REFERENCES Booking(booking_id);
--1.3
ALTER TABLE Booking_flight ADD CONSTRAINT fk_flight_booking_flight FOREIGN KEY (flight_id) REFERENCES Flights(flight_id);
--1.4
ALTER TABLE Flights ADD CONSTRAINT fk_departing_airport FOREIGN KEY (departing_airport_id) REFERENCES Airport(airport_id);
--1.5
ALTER TABLE Flights ADD CONSTRAINT fk_arriving_airport FOREIGN KEY (arriving_airport_id) REFERENCES Airport(airport_id);
--1.6
ALTER TABLE Flights ADD CONSTRAINT fk_airline_flights FOREIGN KEY (airline_id) REFERENCES Airline(airline_id);

--2
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1001, 'Malta International Airport', 'Malta', 'Valletta', 'Luqa', '2011-03-15 00:00:00', '2012-03-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1002, 'Helsinki-Vantaa Airport', 'Finland', 'Uusimaa', 'Vantaa', '2011-04-10 00:00:00', '2012-04-18 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1003, 'Lisbon Portela Airport', 'Portugal', 'Lisbon', 'Lisbon', '2011-05-01 00:00:00', '2012-05-10 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1004, 'Barajas Airport', 'Spain', 'Madrid', 'Madrid', '2011-06-25 00:00:00', '2012-07-02 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1005, 'John F. Kennedy International Airport', 'United States', 'New York', 'New York', '2011-08-15 00:00:00', '2012-08-20 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1006, 'Dubai International Airport', 'United Arab Emirates', 'Dubai', 'Dubai', '2011-09-05 00:00:00', '2012-09-10 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1007, 'Changi Airport', 'Singapore', 'Singapore', 'Changi', '2011-10-01 00:00:00', '2012-10-05 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1008, 'Tokyo Haneda Airport', 'Japan', 'Tokyo', 'Tokyo', '2011-11-12 00:00:00', '2012-11-15 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1009, 'Heathrow Airport', 'United Kingdom', 'England', 'London', '2011-12-20 00:00:00', '2012-12-28 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1010, 'Charles de Gaulle Airport', 'France', 'Île-de-France', 'Roissy-en-France', '2011-01-14 00:00:00', '2012-01-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1011, 'Cairo International Airport', 'Egypt', 'Cairo', 'Cairo', '2011-02-11 00:00:00', '2012-02-18 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1012, 'Sydney Airport', 'Australia', 'New South Wales', 'Sydney', '2011-03-22 00:00:00', '2012-03-30 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1013, 'Hare International Airport', 'United States', 'Illinois', 'Chicago', '2011-04-28 00:00:00', '2012-05-05 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1014, 'LAX Airport', 'United States', 'California', 'Los Angeles', '2011-05-18 00:00:00', '2012-05-25 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1015, 'Hong Kong International Airport', 'China', 'Hong Kong', 'Chek Lap Kok', '2011-06-12 00:00:00', '2012-06-20 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1016, 'Indira Gandhi International Airport', 'India', 'Delhi', 'Delhi', '2011-07-19 00:00:00', '2012-07-26 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1017, 'Franco Montoro International Airport', 'Brazil', 'São Paulo', 'Guarulhos', '2011-08-14 00:00:00', '2012-08-21 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1018, 'Fiumicino Airport', 'Italy', 'Lazio', 'Fiumicino', '2011-09-11 00:00:00', '2012-09-18 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1019, 'Ben Gurion Airport', 'Israel', 'Tel Aviv', 'Tel Aviv', '2011-10-30 00:00:00', '2012-11-06 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1020, 'Lisbon Airport', 'Portugal', 'Lisbon', 'Lisbon', '2011-11-15 00:00:00', '2012-11-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1021, 'Banjul International Airport', 'Gambia', 'Banjul', 'Yundum', '2011-12-12 00:00:00', '2012-12-19 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1022, 'Gibraltar International Airport', 'Gibraltar', 'Gibraltar', 'Gibraltar', '2011-01-05 00:00:00', '2012-01-12 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1023, 'Larnaca International Airport', 'Cyprus', 'Larnaca', 'Larnaca', '2011-02-08 00:00:00', '2012-02-15 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1024, 'Nairobi Jomo Kenyatta International Airport', 'Kenya', 'Nairobi', 'Nairobi', '2011-03-09 00:00:00', '2012-03-16 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1025, 'Yerevan Zvartnots International Airport', 'Armenia', 'Yerevan', 'Yerevan', '2011-04-13 00:00:00', '2012-04-20 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1026, 'Reykjavik Keflavik International Airport', 'Iceland', 'Reykjavik', 'Keflavik', '2011-05-03 00:00:00', '2012-05-10 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1027, 'Asunción Silvio Pettirossi International Airport', 'Paraguay', 'Asunción', 'Asunción', '2011-06-25 00:00:00', '2012-07-02 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1028, 'Montevideo Carrasco International Airport', 'Uruguay', 'Canelones', 'Carrasco', '2011-07-30 00:00:00', '2012-08-06 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1029, 'Santiago International Airport', 'Chile', 'Santiago', 'Santiago', '2011-08-18 00:00:00', '2012-08-25 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1030, 'Quito Mariscal Sucre International Airport', 'Ecuador', 'Pichincha', 'Quito', '2011-09-07 00:00:00', '2012-09-14 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1031, 'Caracas Simón Bolívar International Airport', 'Venezuela', 'Zulia', 'Caracas', '2011-10-02 00:00:00', '2012-10-09 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1032, 'San Juan Luis Muñoz Marín International Airport', 'Puerto Rico', 'Carolina', 'San Juan', '2011-11-25 00:00:00', '2012-12-02 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1033, 'Zagreb Airport', 'Croatia', 'Zagreb', 'Zagreb', '2011-01-20 00:00:00', '2012-01-27 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1034, 'Tbilisi International Airport', 'Georgia', 'Tbilisi', 'Tbilisi', '2011-02-11 00:00:00', '2012-02-18 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1035, 'Skopje Alexander the Great Airport', 'North Macedonia', 'Skopje', 'Skopje', '2011-03-14 00:00:00', '2012-03-21 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1036, 'Riga International Airport', 'Latvia', 'Riga', 'Riga', '2011-04-12 00:00:00', '2012-04-19 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1037, 'Prague Václav Havel Airport', 'Czech Republic', 'Prague', 'Prague', '2011-05-10 00:00:00', '2012-05-17 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1038, 'Tallinn Lennart Meri Airport', 'Estonia', 'Tallinn', 'Tallinn', '2011-06-08 00:00:00', '2012-06-15 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1039, 'Vienna International Airport', 'Austria', 'Vienna', 'Schwechat', '2011-07-05 00:00:00', '2012-07-12 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1040, 'Sofia Airport', 'Bulgaria', 'Sofia', 'Sofia', '2011-08-22 00:00:00', '2012-08-29 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1041, 'Dublin Airport', 'Ireland', 'Dublin', 'Dublin', '2011-09-18 00:00:00', '2012-09-25 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1042, 'Warsaw Chopin Airport', 'Poland', 'Masovian Voivodeship', 'Warsaw', '2011-10-27 00:00:00', '2012-11-03 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1043, 'Oslo Gardermoen Airport', 'Norway', 'Viken', 'Gardermoen', '2011-11-23 00:00:00', '2012-11-30 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1044, 'Amsterdam Schiphol Airport', 'Netherlands', 'North Holland', 'Amsterdam', '2011-12-10 00:00:00', '2012-12-17 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1045, 'Stockholm Arlanda Airport', 'Sweden', 'Stockholm', 'Arlanda', '2011-01-29 00:00:00', '2012-02-05 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1046, 'Berlin Brandenburg Airport', 'Germany', 'Brandenburg', 'Berlin', '2011-03-11 00:00:00', '2012-03-18 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1047, 'Brussels Airport', 'Belgium', 'Flemish Region', 'Brussels', '2011-04-22 00:00:00', '2012-04-29 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1048, 'Zurich Airport', 'Switzerland', 'Zurich', 'Zurich', '2011-05-17 00:00:00', '2012-05-24 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1049, 'Copenhagen Airport', 'Denmark', 'Capital Region', 'Copenhagen', '2011-06-15 00:00:00', '2012-06-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1050, 'Helsinki-Vantaa Airport', 'Finland', 'Uusimaa', 'Helsinki', '2011-07-08 00:00:00', '2012-07-15 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1051, 'Tokyo Narita Airport', 'Japan', 'Chiba', 'Narita', '2011-08-05 00:00:00', '2012-08-12 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1052, 'Athens International Airport', 'Greece', 'Attica', 'Spata', '2011-09-10 00:00:00', '2012-09-17 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1053, 'Budapest Ferenc Liszt International Airport', 'Hungary', 'Budapest', 'Budapest', '2011-10-14 00:00:00', '2012-10-21 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1054, 'Vienna International Airport', 'Austria', 'Vienna', 'Vienna', '2011-11-01 00:00:00', '2012-11-08 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1055, 'Doha Hamad International Airport', 'Qatar', 'Doha', 'Doha', '2011-12-05 00:00:00', '2012-12-12 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1056, 'Kuala Lumpur International Airport', 'Malaysia', 'Selangor', 'Sepang', '2011-01-10 00:00:00', '2012-01-17 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1057, 'King Abdulaziz International Airport', 'Saudi Arabia', 'Jeddah', 'Jeddah', '2011-02-15 00:00:00', '2012-02-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1058, 'Oman Muscat International Airport', 'Oman', 'Muscat', 'Muscat', '2011-03-18 00:00:00', '2012-03-25 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1059, 'Manila Ninoy Aquino International Airport', 'Philippines', 'Metro Manila', 'Pasay', '2011-04-20 00:00:00', '2012-04-27 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1060, 'Bahrain International Airport', 'Bahrain', 'Muharraq', 'Muharraq', '2011-05-22 00:00:00', '2012-05-29 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1061, 'Colombo Bandaranaike International Airport', 'Sri Lanka', 'Western Province', 'Katunayake', '2011-06-12 00:00:00', '2012-06-19 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1062, 'Moscow Sheremetyevo International Airport', 'Russia', 'Moscow', 'Khimki', '2011-07-15 00:00:00', '2012-07-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1063, 'Istanbul Airport', 'Turkey', 'Istanbul', 'Istanbul', '2011-08-10 00:00:00', '2012-08-17 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1064, 'Sofia Airport', 'Bulgaria', 'Sofia', 'Sofia', '2011-09-28 00:00:00', '2012-10-05 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1065, 'Tel Aviv Ben Gurion Airport', 'Israel', 'Tel Aviv', 'Tel Aviv', '2011-10-19 00:00:00', '2012-10-26 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1066, 'Cairo International Airport', 'Egypt', 'Cairo', 'Cairo', '2011-11-17 00:00:00', '2012-11-24 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1067, 'Lagos Murtala Muhammed International Airport', 'Nigeria', 'Lagos', 'Lagos', '2011-12-10 00:00:00', '2012-12-17 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1068, 'Lima Jorge Chávez International Airport', 'Peru', 'Callao', 'Callao', '2011-01-05 00:00:00', '2012-01-12 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1069, 'San Francisco International Airport', 'United States', 'California', 'San Mateo', '2011-02-09 00:00:00', '2012-02-16 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1070, 'Austin-Bergstrom International Airport', 'United States', 'Texas', 'Austin', '2011-03-10 00:00:00', '2012-03-17 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1071, 'Seattle-Tacoma International Airport', 'United States', 'Washington', 'SeaTac', '2011-04-15 00:00:00', '2012-04-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1072, 'Orlando International Airport', 'United States', 'Florida', 'Orlando', '2011-05-12 00:00:00', '2012-05-19 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1073, 'Denver International Airport', 'United States', 'Colorado', 'Denver', '2011-06-20 00:00:00', '2012-06-27 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1074, 'Phoenix Sky Harbor International Airport', 'United States', 'Arizona', 'Phoenix', '2011-07-01 00:00:00', '2012-07-08 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1075, 'Philadelphia International Airport', 'United States', 'Pennsylvania', 'Philadelphia', '2011-08-14 00:00:00', '2012-08-21 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1076, 'Minneapolis-Saint Paul International Airport', 'United States', 'Minnesota', 'Minneapolis', '2011-09-05 00:00:00', '2012-09-12 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1077, 'Charlotte Douglas International Airport', 'United States', 'North Carolina', 'Charlotte', '2011-10-29 00:00:00', '2012-11-05 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1078, 'Houston George Bush Intercontinental Airport', 'United States', 'Texas', 'Houston', '2011-11-17 00:00:00', '2012-11-24 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1079, 'Miami International Airport', 'United States', 'Florida', 'Miami', '2011-12-08 00:00:00', '2012-12-15 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1080, 'Newark Liberty International Airport', 'United States', 'New Jersey', 'Newark', '2011-01-18 00:00:00', '2012-01-25 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1081, 'Cincinnati/Northern Kentucky International Airport', 'United States', 'Kentucky', 'Hebron', '2011-02-01 00:00:00', '2012-02-08 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1082, 'San Diego International Airport', 'United States', 'California', 'San Diego', '2011-03-12 00:00:00', '2012-03-19 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1083, 'Salt Lake City International Airport', 'United States', 'Utah', 'Salt Lake City', '2011-04-25 00:00:00', '2012-05-02 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1084, 'Detroit Metropolitan Wayne County Airport', 'United States', 'Michigan', 'Detroit', '2011-05-30 00:00:00', '2012-06-06 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1085, 'Las Vegas McCarran International Airport', 'United States', 'Nevada', 'Las Vegas', '2011-06-18 00:00:00', '2012-06-25 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1086, 'Tampa International Airport', 'United States', 'Florida', 'Tampa', '2011-07-14 00:00:00', '2012-07-21 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1087, 'Seattle Boeing Field', 'United States', 'Washington', 'Seattle', '2011-08-03 00:00:00', '2012-08-10 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1088, 'Portland International Airport', 'United States', 'Oregon', 'Portland', '2011-09-02 00:00:00', '2012-09-09 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1089, 'Nashville International Airport', 'United States', 'Tennessee', 'Nashville', '2011-10-20 00:00:00', '2012-10-27 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1090, 'Indianapolis International Airport', 'United States', 'Indiana', 'Indianapolis', '2011-11-09 00:00:00', '2012-11-16 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1091, 'Columbus John Glenn International Airport', 'United States', 'Ohio', 'Columbus', '2011-12-04 00:00:00', '2012-12-11 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1092, 'Thurgood Marshall Airport', 'United States', 'Maryland', 'Baltimore', '2011-01-12 00:00:00', '2012-01-19 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1093, 'Kansas City International Airport', 'United States', 'Missouri', 'Kansas City', '2011-02-15 00:00:00', '2012-02-22 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1094, 'Albuquerque International Sunport', 'United States', 'New Mexico', 'Albuquerque', '2011-03-11 00:00:00', '2012-03-18 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1095, 'Louisville Muhammad Ali International Airport', 'United States', 'Kentucky', 'Louisville', '2011-04-25 00:00:00', '2012-05-02 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1096, 'Oklahoma City Will Rogers World Airport', 'United States', 'Oklahoma', 'Oklahoma City', '2011-05-31 00:00:00', '2012-06-07 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1097, 'Raleigh-Durham International Airport', 'United States', 'North Carolina', 'Morrisville', '2011-06-20 00:00:00', '2012-06-27 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1098, 'Jacksonville International Airport', 'United States', 'Florida', 'Jacksonville', '2011-07-16 00:00:00', '2012-07-23 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1099, 'Tucson International Airport', 'United States', 'Arizona', 'Tucson', '2011-08-12 00:00:00', '2012-08-19 00:00:00');
insert into airport (airport_id, airport_name, country, state, city, created_at, updated_at) values (1100, 'Cleveland Hopkins International Airport', 'United States', 'Ohio', 'Cleveland', '2011-09-09 00:00:00', '2012-09-16 00:00:00');


--3
insert into airline(airline_id, airline_code, airline_name, airline_country, created_at, updated_at) values (10, 'kazakh','KazAir','Kazakhstan','2011-09-09 00:00:00','2012-09-16 00:00:00' );

--4
UPDATE airline SET airline_country = 'Turkey' WHERE airline_id = 10;

--5
insert into airline(airline_id, airline_code, airline_name, airline_country, created_at, updated_at) values (11, 'kazakh1','SIT','Kazakhstan','2011-08-09 00:00:00','2012-08-16 00:00:00' );
DELETE FROM airline WHERE airline_name = 'SIT';

--6
INSERT INTO Airline(AIRLINE_ID, AIRLINE_CODE, AIRLINE_NAME, AIRLINE_COUNTRY, CREATED_AT, UPDATED_AT)
VALUES(
       12,'k2','AirEasy', 'France','2011-01-09 00:00:00', '2019-08-09 00:00:00'),
        (13,'vd','FlyHigh','Brazil','2001-08-09 00:00:00','2019-05-09 00:00:00'),
        (18,'bdvd','FlyFly','Poland','2006-08-09 00:00:00','2014-08-09 00:00:00');

--7
INSERT INTO Airport (airport_id, airport_name, country,state , city, created_at, updated_at) VALUES (101, 'John F. Kennedy International Airport', 'USA', 'new york','New York', NOW(), NOW());
INSERT INTO Airport (airport_id, airport_name, country,state , city, created_at, updated_at) VALUES   (102, 'Los Angeles International Airport', 'USA', 'new york','Los Angeles', NOW(), NOW());
INSERT INTO Airline (airline_id, airline_code, airline_name, airline_country, created_at, updated_at)
VALUES
(5, 'EXA', 'Example Airline', 'USA', NOW(), NOW());
INSERT INTO flights(
    flight_id, sch_departure_time, sch_arrival_time,
    departing_airport_id, arriving_airport_id,
    departing_gate, arriving_gate,
    airline_id, act_departure_time, act_arrival_time,
    created_at, updated_at)
VALUES
(
    1, '2024-01-15 08:30:00', '2024-01-15 12:00:00',
    101, 102,
    'G1', 'G4',
    5, '2024-01-15 08:45:00', '2024-01-15 12:05:00',
    '2011-01-09 00:00:00', '2011-01-19 00:00:00'
);
DELETE FROM Flights WHERE EXTRACT(YEAR FROM sch_arrival_time) = 2024;

--8
UPDATE Booking SET ticket_price = ticket_price * 1.1 WHERE ticket_price > 0;

--9
DELETE FROM Booking WHERE ticket_price < 1000;
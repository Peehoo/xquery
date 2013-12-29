SET DEFINE OFF
alter session set nls_date_format = 'MM-DD-YYYY HH24:MI:SS';

DELETE FROM FLTRESV;

Insert into FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES(215, to_timestamp('13:40:00', 'HH24:MI:SS'), 57, 30, 0, 'Los Angeles', 'San Francisco',
	'<Requests>
		<Request>
		<Agent_name>Sinclair Travel</Agent_name>
		<Request_date>2013-08-25</Request_date>
		<contact_person>
			<name>William King</name>
			<phone>103-333-8840</phone>
		</contact_person>
		<Reservation>
			<Flight>215</Flight>
			<travel_date>2013-11-22</travel_date>
			<number_of_seats>6</number_of_seats>
		</Reservation>
	        </Request>
		<Request>
		<Agent_name>Iberica Travel</Agent_name>
		<Request_date>2013-08-30</Request_date>
		<contact_person>
			<name>Carol Sawyer</name>
			<phone>107-834-8900</phone>
		</contact_person>
		<Reservation>
			<Flight>215</Flight>
			<travel_date>2013-11-22</travel_date>
			<number_of_seats>10</number_of_seats>
		</Reservation>
		</Request>
		<Request>
		<Agent_name>Gold Tours</Agent_name>
		<Request_date>2013-10-31</Request_date>
		<contact_person>
			<name>Samantha Grace</name>
			<phone>213-786-9035</phone>
		</contact_person>
		<Reservation>
			<Flight>215</Flight>
			<travel_date>2013-11-22</travel_date>
			<number_of_seats>7</number_of_seats>
		</Reservation>
		</Request>
		<Request>
		<Agent_name>Mayfield Travel</Agent_name>
		<Request_date>2013-10-09</Request_date>
		<contact_person>
			<name>Pearl Gardner</name>
			<phone>264-654-9083</phone>
		</contact_person>
		<Reservation>
			<Flight>215</Flight>
			<travel_date>2013-12-05</travel_date>
			<number_of_seats>6</number_of_seats>
		</Reservation>
		</Request>
		<Request>
		<Agent_name>Metro Tours</Agent_name>
		<Request_date>2013-11-01</Request_date>
		<Reservation>
			<Flight>215</Flight>
			<travel_date>2013-11-22</travel_date>
			<number_of_seats>8</number_of_seats>
		</Reservation>
		</Request>
	</Requests>');


INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (113, to_timestamp('14:50:00', 'HH24:MI:SS'), 70, 80, 0, 'Los Angeles', 'Salt Lake City', 
	'<Requests>
		<Request>
			<Agent_name>Tee Adventures</Agent_name>
			<Request_date>2013-08-30</Request_date>
			<contact_person>
				<name>Thomas Karcher</name>
				<phone>293-856-9134</phone>
			</contact_person>
			<Reservation>
				<Flight>113</Flight>
				<travel_date>2013-11-20</travel_date>
				<number_of_seats>5</number_of_seats>
			</Reservation>
		</Request>
	</Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (114, to_timestamp('16:00:00', 'HH24:MI:SS'), 180, 30, 1, 'San Francisco', 'Minneapolis', '<Requests></Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (675, to_timestamp('09:07:00', 'HH24:MI:SS'), 294, 102, 0, 'San Francisco', 'New York', 
	'<Requests>
		<Request>
			<Agent_name>Norco Travel</Agent_name>
			<Request_date>2013-10-05</Request_date>
			<Reservation>
				<Flight>675</Flight>
				<travel_date>2013-12-05</travel_date>
				<number_of_seats>8</number_of_seats>
			</Reservation>
		</Request>
	</Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (879, to_timestamp('09:30:00', 'HH24:MI:SS'), 138, 24, 0, 'Los Angeles', 'Seattle', 
	'<Requests>
		<Request>
			<Agent_name>Tee Adventures</Agent_name>
			<Request_date>2013-10-09</Request_date>
			<contact_person>
				<name>Albert Parks</name>
				<phone>224-980-8907</phone>
			</contact_person>
			<Reservation>
				<Flight>879</Flight>
				<travel_date>2013-12-24</travel_date>
				<number_of_seats>14</number_of_seats>
			</Reservation>
		</Request>
	</Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (124, to_timestamp('20:00:00', 'HH24:MI:SS'), 50, 58, 1, 'Los Angeles', 'San Jose', '<Requests></Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (156, to_timestamp('12:50:00', 'HH24:MI:SS'), 270, 124, 0, 'Seattle', 'Washington', '<Requests></Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (354, to_timestamp('10:46:00', 'HH24:MI:SS'), 57, 60, 1, 'Los Angeles', 'San Francisco', 
	'<Requests>
		<Request>
			<Agent_name>Metro Tours</Agent_name>
			<Request_date>2013-08-07</Request_date>
			<contact_person>
				<name>Chuck Bartowski</name>
				<phone>310-987-7828</phone>
			</contact_person>
			<Reservation>
				<Flight>354</Flight>
				<travel_date>2013-11-23</travel_date>
				<number_of_seats>11</number_of_seats>
			</Reservation>
		</Request>
	</Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (567, to_timestamp('17:30:00', 'HH24:MI:SS'), 145, 45, 0, 'Seattle', 'Phoenix', 
	'<Requests>
		<Request>
			<Agent_name>Voyagers Amerik</Agent_name>
			<Request_date>2013-09-24</Request_date>
			<contact_person>
				<name>Geoff Marks</name>
				<phone>213-908-4564</phone>
			</contact_person>
			<Reservation>
				<Flight>567</Flight>
				<travel_date>2013-12-06</travel_date>
				<number_of_seats>4</number_of_seats>
			</Reservation>
		</Request>
	</Requests>');

INSERT INTO FLTRESV (FLIGHT_NUM, DEPARTURE_TIME, DURATION, CAPACITY, SEASONAL, ORIGIN, DESTINATION, REQUEST)
VALUES (845, to_timestamp('07:34:00', 'HH24:MI:SS'), 287, 100, 0, 'Los Angeles', 'New York', '<Requests></Requests>');

COMMIT;






The goal of this homework is to use XML in database. You need to be familiar with XML Schemas, XML files and the use of the XML query language XQuery to query XML data.

Part 1: Design an XML Schema that incorporates the following specifications (25 points).
A small airline needs to keep track of information about group reservation requests. You would like to represent this data in XML. Given the information shown below about the data, create a valid XML Schema fltresv.xsd.
You should use appropriate data types, including defining your own complex types as applicable. Restrictions should be set on the format or range of possible values where necessary.

Each Flight represents a scheduled, recurring daily service, and has:
● Flight Number (1 occurrence, required. Format: two or three digits, not starting with zero)
● Departure Time (1 occurrence, required. Format: “hh:mm:ss”)
● Duration (1 occurrence, required. Flight time in minutes.)
● Capacity (1 occurrence, required. Must be a positive integer.)
● Seasonal (1 occurrence, required. Format: true/false)
● Origin (1 occurrence, required)
● Destination (1 occurrence, required)

Each Request has:
● Agent Name (1 occurrence, required)
● Request Date (1 occurrence, required, format: YYYY­MM­DD)
● Contact Person (0 or 1 occurrence), an occurrence of this element should have in order:
	➔ Name (1 occurrence, required)
	➔ Phone (1 occurrence, required. Format: ddd­xxx­xxxx where d must be digits and x
￼     alphanumeric)
● Reservation (1 or more occurrences, required), each occurrence of this element
represents a reservation of seats to travel on a particular flight on a given date and should have in order:
	➔ Flight (1 occurrence, required. Type: Flight/Flight Number)
	➔ Travel Date (1 occurrence, required, format: YYYY­MM­DD)
	➔ Number of Seats (1 occurrence, required. Must be a positive integer.)


Part 2: Take the data (flight.xlsx, request.xlsx) and the XML Schema you designed in Part 1 to create a valid XML file (15 points)
Note: Make sure that the XML files are validated against the XML Schema you designed. You can use the online validator:
http://www.corefiling.com/opensource/schemaValidate.html
Name your xml file as fltresv.xml.
Part 3. Insert data into Oracle DBMS and use XQuery to answer 4 queries (60 points, 10
points for each question).
Using XQuery, query your fltresv.xml file to answer the following. You should submit the respective query files (not the results!). 
Name your files as shown below.
￼
1. Create a table FLTRESV with the following data type:
Table definition: 
FLIGHT_NUM NUMBER       // do not need to worry about constraint here
DEPART_TIME TIMESTAMP 
DURATION NUMBER 
CAPACITY NUMBER 
SEASONAL NUMBER(1)     //0 and 1 only, but do not need to worry about constraint here
ORIGIN VARCHAR2(50 BYTE)
DESTINATION VARCHAR2(50 BYTE) 
REQUEST XMLTYPE

Note that the column “request” is an XMLTYPE to store the request of this flight. One flight could have 0, 1, or many requests. (createtable.sql)

2. Write/create a sql to insert flight and request data into your tables. (insertdata.sql)
3. List the flight number, departure time, and duration of all flights that are not seasonal and
requested by Tee Adventures at least once. (q3.sql)
4. List the flight number, agent name and contact person’s phone number (if any) for all
requests made for a flight whose origin is Los Angeles. (q4.sql)
5. Show the flight number, departure time, duration, and reservation of this flight if there is at
least one request before Oct 10, 2013. (q5.sql)
6. Show all travel_date and the total number of seats booked on that date for Flight 215 if
there is at least one request on that date. (q6.sql)

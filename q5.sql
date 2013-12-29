Select F.FLIGHT_NUM, to_char(F.DEPARTURE_TIME, 'HH24:MI:SS') as Depart_time, F.DURATION as duration, R.Flight as Resv_Flight, to_char(R.travel_date, 'MM-DD-YYYY') as Resv_travel_date, R.num_of_seats as Resv_num_of_seats
FROM FLTRESV F,
xmltable('/Requests/Request' PASSING F.REQUEST
COLUMNS
Request_date Date path 'Request_date',
Flight integer path 'Reservation/Flight',
travel_date Date path 'Reservation/travel_date',
num_of_seats integer path 'Reservation/number_of_seats') AS R
WHERE F.FLIGHT_NUM IN
  (SELECT DISTINCT FLIGHT_NUM
    FROM FLTRESV,
    xmltable ('/Requests/Request' PASSING REQUEST
    COLUMNS
    Request_date DATE PATH 'Request_date') R
    WHERE R.Request_date < to_date('10/10/2013', 'mm/dd/yyyy'))
ORDER BY F.FLIGHT_NUM;
Select DISTINCT to_char(R.travel_date, 'MM-DD-YYYY') as Resv_travel_date, sum(R.num_of_seats) as Total_num_of_seats FROM FLTRESV F,
xmltable('/Requests/Request' PASSING F.REQUEST
COLUMNS
Flight integer path 'Reservation/Flight',
travel_date Date path 'Reservation/travel_date',
num_of_seats integer path 'Reservation/number_of_seats') AS R
where R.Flight = 215
group by to_char(R.travel_date,'MM-DD-YYYY');


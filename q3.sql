Select DISTINCT F.FLIGHT_NUM, to_char(F.DEPARTURE_TIME, 'HH24:MI:SS') as DEPARTURE_TIME, F.DURATION 
from FLTRESV F,
xmltable('/Requests/Request' PASSING F.Request
COLUMNS
Agent_name VARCHAR2(50) path 'Agent_name') as R
where R.Agent_name  = 'Tee Adventures' and F.SEASONAL = 0;

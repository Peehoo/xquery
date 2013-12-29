Select F.FLIGHT_NUM, Request.Agent_name as Agent_name, Request.Phone as Phone_number from FLTRESV F, 
xmltable ('/Requests/Request' PASSING F.REQUEST
COLUMNS
Agent_name VARCHAR2(50) path 'Agent_name',
Phone VARCHAR2(25) path 'contact_person/phone') AS Request 
where F.ORIGIN = 'Los Angeles'; 


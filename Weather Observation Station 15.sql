select round(LONG_W,4) from station 
where LAT_N = (select max(LAT_N) 
FROM station where LAT_N < 137.2345)
;

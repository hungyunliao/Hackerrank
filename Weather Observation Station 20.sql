SELECT cast(round(MAX(LAT_N),4) AS decimal (10,4))
FROM (SELECT TOP 50 percent * FROM station order by LAT_N) AS temp
;

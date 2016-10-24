select round(ABS(min(LAT_N) - min(LONG_W)) + ABS(max(LAT_N) - max(LONG_W)),4) 
from station;

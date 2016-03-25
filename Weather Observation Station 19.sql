select to_char (round(SQRT(power((min(LAT_N) - min(LONG_W)),2) + power((max(LAT_N) - max(LONG_W)),2)),4), '00.0000') 
from station;

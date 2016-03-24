/* MySQL */
select city, char_length(CITY) as len
from station
where city in (
    select city
    from (select city from station order by city) as temp
    where char_length(city) = (select min(char_length(city)) from station)
    group by char_length(city)
) OR city in (
    select city
    from (select city from station order by city) as temp1
    where char_length(city) = (select max(char_length(city)) from station)
    group by char_length(city)
)
;

use mavenmovies;
select 
date_format(rental_date ,'%y-%m') as date,
count(*) as total_rent
from rental
group by date
order by date;




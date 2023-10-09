SELECT  
    distinct payment_date as fecha,
    MONTH(payment_date) as mes,
    YEAR(payment_date) as anno,
    quarter(payment_date) as trime,
    case when quarter(payment_date) <= 2 then 1 else 2 end as sem,
    dayofweek(payment_date) as dia_Sem
from payment
limit 5
;

SELECT
    store_id,
    address,
    address2,
    district,
    city,
    country
from store
    join address using (address_id)
    join city using (city_id)
    join country using (country_id)
limit 5;
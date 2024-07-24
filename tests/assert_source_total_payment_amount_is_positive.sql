select
    orderid as order_id,
    sum(amount) as total_amount
from {{ source('stripe','payment')}}
group by orderid
having total_amount < 0

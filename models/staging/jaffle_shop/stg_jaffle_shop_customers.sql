select
    id as customer_id,
    first_name,
    last_name,
    current_timestamp() as dp_load_date
from {{ source('jaffle_shop', 'customers') }}
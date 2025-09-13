with src as (
  select
    customer_id,
    first_name,
    last_name,
    email,
    signup_date
  from {{ source('raw_retail', 'customers') }}
)
select
  customer_id as customer_key,    
  first_name,
  last_name,
  email,
  signup_date
from src
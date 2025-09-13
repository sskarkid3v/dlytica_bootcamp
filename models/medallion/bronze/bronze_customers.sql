SELECT
    customer_id,
    first_name,
    last_name,
    email,
    signup_date
from {{ source('raw_retail', 'customers') }}
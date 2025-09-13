with src as (
  select
    order_id,
    customer_id,
    product_id,
    cast(amount as numeric) as amount,
    cast(order_date as date) as order_date
  from {{ source('raw_retail', 'orders') }}
)
select
  order_id,
  customer_id as customer_key,
  product_id  as product_key,
  amount,
  order_date
from src
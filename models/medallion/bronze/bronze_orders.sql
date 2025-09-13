select
  order_id,
  customer_id,
  product_id,
  amount,
  order_date
from {{ source('raw_retail', 'orders') }}
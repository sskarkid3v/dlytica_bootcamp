with src as (
  select
    product_id,
    name,
    category,
    price
  from {{ source('raw_retail', 'products') }}
)
select
  product_id as product_key,
  name       as product_name,
  category,
  price
from src
select
  product_id,
  name,
  price,
  category
from {{ source('raw_retail', 'products') }}
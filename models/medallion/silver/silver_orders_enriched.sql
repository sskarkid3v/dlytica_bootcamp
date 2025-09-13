select
  o.order_id,
  o.customer_id,
  c.first_name,
  c.last_name,
  o.product_id,
  p.name  as product_name,
  p.category,
  o.amount,
  o.order_date
from {{ ref('silver_orders_clean') }} o
left join {{ ref('bronze_customers') }} c on c.customer_id = o.customer_id
left join {{ ref('bronze_products')  }} p on p.product_id  = o.product_id

select
  customer_id,
  sum(amount) as ltv,
  min(order_date) as first_order_date,
  max(order_date) as last_order_date,
  count(*) as orders
from {{ ref('silver_orders_enriched') }}
group by 1

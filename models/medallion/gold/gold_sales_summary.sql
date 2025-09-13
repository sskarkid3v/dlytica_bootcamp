select
  date_trunc('month', order_date) as month,
  category,
  sum(amount) as revenue,
  count(*)   as order_count
from {{ ref('silver_orders_enriched') }}
group by 1,2
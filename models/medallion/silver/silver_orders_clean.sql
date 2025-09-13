with o as (
  select
    order_id,
    customer_id,
    product_id,
    cast(amount as numeric) as amount,
    cast(order_date as date) as order_date
  from {{ ref('bronze_orders') }}
  where amount is not null and amount >= 0
)
select * from o

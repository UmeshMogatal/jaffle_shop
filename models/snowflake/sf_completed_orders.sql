{{ config(materialized='table') }}

select *
-- from raw.jaffle_shop.orders
from {{ source('snowflake_raw','orders') }}
where status = 'completed'
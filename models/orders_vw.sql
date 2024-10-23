{{ config(materialized='view') }}

select *
from raw.jaffle_shop.orders
{{ config(materialized='table') }}

select *
from dbtworkshop.jaffle_shop.orders
-- from {{ source('redshift_raw','orders') }}
where status = 'completed';
-- added comments
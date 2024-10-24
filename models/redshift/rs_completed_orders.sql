{{ config(materialized='table') }}

select *
-- from dbtworkshop.jaffle_shop.orders -- testing comment
from {{ source('redshift_raw','orders') }}
where status = 'completed'
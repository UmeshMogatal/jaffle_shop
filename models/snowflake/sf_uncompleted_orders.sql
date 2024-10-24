{{ config(materialized='table') }}

select *
from {{ source('snowflake_raw', 'orders') }}
where status not ilike 'completed'
-- where status ilike 'placed'
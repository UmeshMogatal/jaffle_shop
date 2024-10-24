{{ config(materialized='table') }}

select *
from {{ source('snowflake_raw','orders') }}
where status = 'completed'
-- adding comment test1
{{ config(materialized='table') }}

select *
from {{ source('redshift_raw','orders') }}
where status != 'completed'
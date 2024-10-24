{{ config(materialized='table') }}
select *
from {{ ref('sf_completed_orders') }}

union all

select *
from {{ ref('sf_uncompleted_orders') }}
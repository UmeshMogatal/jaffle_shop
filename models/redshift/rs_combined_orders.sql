{{ config(materialized='table') }}

select *
from {{ ref('rs_completed_orders') }}

union all

select *
from {{ ref('rs_uncompleted_orders') }}
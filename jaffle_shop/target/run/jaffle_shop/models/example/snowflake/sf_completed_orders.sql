
  
    

        create or replace transient table snowflake_dev.jaffle_shop.sf_completed_orders
         as
        (

select *
-- from raw.jaffle_shop.orders
from raw.jaffle_shop.orders
where status = 'completed'
        );
      
  
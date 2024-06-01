
  create or replace   view analytics.dbt_wyang.test_customers
  
   as (
    select * from raw.jaffle_shop.customers
  );


{{
    config(
        materialized='table',
        pre_hook='delete from ANALYTICS.DBT_WYANG.TEMP_CUSTOMERS',
        post_hook='create table ANALYTICS.DBT_WYANG.TEMP_ORDERS as select * from RAW.JAFFLE_SHOP.ORDERS'
    )
}}

select
    id as customer_id,
    first_name,
    last_name

from {{ source('jaffle_shop', 'customers') }}
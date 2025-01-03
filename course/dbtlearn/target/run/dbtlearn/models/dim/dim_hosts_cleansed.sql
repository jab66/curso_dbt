
  create or replace   view AIRBNB.DEV.dim_hosts_cleansed
  
   as (
    
with  __dbt__cte__src_hosts as (
with raw_hosts as (
    select * from AIRBNB.raw.raw_hosts
)
select 
    id host_id,
    name host_name,
    is_superhost,
    created_at,
    updated_at
from raw_hosts
), src_hosts as (
    select * from __dbt__cte__src_hosts
)
select 
    host_id,
    nvl(host_name, 'Anonymous') host_name,
    is_superhost,
    created_at,
    updated_at
from src_hosts
  );


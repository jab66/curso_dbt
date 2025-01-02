
with  __dbt__cte__src_reviews as (
with raw_reviews as (
    select * from AIRBNB.raw.raw_reviews   
)
select 
    listing_id,
    date as review_date,
    REVIEWER_NAME,
    comments review_text,
    sentiment review_sentiment
from raw_reviews
), src_reviews as (
    select * from __dbt__cte__src_reviews
)
select 
  md5(cast(coalesce(cast(listing_id as 
    varchar
), '') || '-' || coalesce(cast(review_date as 
    varchar
), '') || '-' || coalesce(cast(reviewer_name as 
    varchar
), '') || '-' || coalesce(cast(review_text as 
    varchar
), '') as 
    varchar
)) as review_id,
  * 
  from src_reviews
where review_text is not null

  
    
    and review_date >= '2024-02-15 00:00:00'
    and review_date <  '2024-03-15 23:59:59'
  

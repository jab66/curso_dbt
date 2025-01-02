
  create or replace   view AIRBNB.DEV.src_reviews
  
   as (
    with raw_reviews as (
    select * from AIRBNB.RAW.RAW_REVIEWS   
)
select 
    listing_id,
    date as review_date,
    REVIEWER_NAME,
    comments review_text,
    sentiment review_sentiment
from raw_reviews
  );


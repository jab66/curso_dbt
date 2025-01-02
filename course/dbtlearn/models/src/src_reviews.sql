with raw_reviews as (
    select * from {{ source('airbnb', 'reviews') }}   
)
select 
    listing_id,
    date as review_date,
    REVIEWER_NAME,
    comments review_text,
    sentiment review_sentiment
from raw_reviews

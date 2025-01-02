WITH fullmoon_reviews AS (
    SELECT * FROM AIRBNB.DEV.mart_fullmoon_reviews
)
SELECT
    is_full_moon,
    review_sentiment,
FROM
    fullmoon_reviews
GROUP BY
    is_full_moon,
    review_sentiment
ORDER BY
    is_full_moon,
    review_sentiment
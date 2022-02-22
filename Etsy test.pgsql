WITH purchase_rank AS(
    SELECT
        user_id, spend, RANK() 
        OVER(PARTITION BY user_id
        ORDER BY transaction_date ASC) AS rank
    FROM
        user_transactions
)
SELECT
    user_id
FROM
    purchase_rank
WHERE
    rank = 1 AND spend >= 50.00;
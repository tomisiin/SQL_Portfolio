##Assume you are given the below table on transactions from users for purchases. Write a query to get the list of customers where their earliest purchase was at least $50.


WITH purchase_rank AS(
    SELECT
        user_id, spend, RANK() OVER(PARTITION BY user_id ORDER BY transaction_date ASC) AS rank
    FROM
        user_transactions
)
SELECT
    user_id
FROM
    purchase_rank
WHERE
    rank = 1 AND spend >= 50.00;

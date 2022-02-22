##This query shows the top 3 cities with the highest number of successful trades by joining data from the users and trades tables.

SELECT 
    city, 
    COUNT(status = 'Successful') AS Successful_Trades
FROM 
    users
JOIN
    trades
ON
    users.user_id = trades.user_id
WHERE
    status = 'Successful'
GROUP BY
    city
ORDER BY
    successful_trades DESC
LIMIt 3;

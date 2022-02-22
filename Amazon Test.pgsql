SELECT COUNT(user_id)
FROM
    purchases
WHERE 
    purchase-id >= 1 AND COUNT(purchase_time) > 1;
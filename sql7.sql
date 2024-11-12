-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(order_time) as hours, COUNT(order_id) as order_count
FROM
    orders
GROUP BY hours;
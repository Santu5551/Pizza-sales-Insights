-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT 
    pizza_types.category AS cat,
    SUM(order_details.quantity) AS total
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id
GROUP BY cat
ORDER BY total;
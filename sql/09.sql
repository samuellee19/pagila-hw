/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, last_name, SUM(amount) FROM staff 
INNER JOIN (SELECT staff_id, amount FROM payment
    WHERE payment_date >= CAST('2020-01-01' AS DATE)
    AND payment_date < CAST('2020-02-01' AS DATE)) AS p
ON staff.staff_id = p.staff_id
GROUP BY first_name, last_name;

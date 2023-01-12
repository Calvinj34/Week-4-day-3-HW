-- 1. List all customers who live in Texas (use
-- JOINs)

SELECT first_name,last_name,district
FROM address
INNER JOIN customer
ON customer.address_id = address.address_id
WHERE district = 'Texas';
-- 2. Get all payments above $6.99 with the Customer's Full
-- Name
SELECT first_name, last_name,amount
From customer
INNER JOIN payment
On payment.customer_id = customer.customer_id
WHERE amount > 6.99
ORDER BY amount DESC

-- 3. Show all customers names who have made payments over $175(use
-- subqueries)
SELECT customer_id
FROM payment
WHERE amount > 175
GROUP BY customer_id

SELECT first_name, last_name
FROM customer
WHERE customer_id IN(
    SELECT customer_id
    FROM payment
    WHERE amount > 175
    GROUP BY customer_id
);

-- 4. List all customers that live in Nepal (use the city
-- table)

SELECT first_name
FROM city
Inner JOIN customer
ON customer.last_update = city.last_update
WHERE district = 'Nepal'

-- 5. Which staff member had the most
-- transactions?
Mike Hillyer- 8040
Jon Stephens - 8004

SELECT first_name,last_name, count(rental_id)
FROM staff
INNER JOIN rental
On staff.staff_id = rental.staff_id
Group by first_name,last_name

-- 6. How many movies of each rating are
-- there?
R 195
NC-17 209
G 178
PG-13 223
PG 194 

SELECT rating, count(rating)
From film
Group by rating

-- 7.Show all customers who have made a single payment
-- above $6.99 (Use Subqueries)

SELECT first_name, last_name, amount
From customer
INNER JOIN payment
On payment.customer_id = customer.customer_id
WHERE amount > 6.99
Group by first_name, last_name,amount;

-- 8. How many free rentals did our store give away?
none. there are no payments = null or anything less than 2.00

SELECT *
FROM payment
-- ORDER by amount DESC
WHERE amount < 2.00



SELECT 
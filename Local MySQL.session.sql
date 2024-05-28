-- Select all from product table
SELECT * 
FROM product;

-- Select products from category 1 or 5 with unit price > 3.5
SELECT * 
FROM product 
WHERE (category_id = 1 OR category_id = 5) 
  AND unit_price > 3.5;

-- Join product and category tables and select product name and category name
SELECT 
  product_name, 
  category.name AS category_name 
FROM product 
JOIN category 
  ON product.category_id = category.category_id;

-- Join purchase_item and product tables and select specific columns
SELECT 
  purchase_id, 
  product_name, 
  purchase_item.unit_price, 
  quantity
FROM purchase_item 
JOIN product 
  ON purchase_item.product_id = product.product_id;

-- Select all from category table ordered by name in ascending order
SELECT * 
FROM category 
ORDER BY name ASC;

-- Select last name, first name, and birth date from employee table ordered by birth date in descending order
SELECT 
  last_name, 
  first_name, 
  birth_date 
FROM employee 
ORDER BY birth_date DESC;

-- Select all from product table ordered by units in stock in descending order and then by product name in ascending order
SELECT * 
FROM product 
ORDER BY units_in_stock DESC, product_name ASC;

-- Select last name and first name of employees where hire date is null
SELECT 
  last_name, 
  first_name 
FROM employee 
WHERE hire_date IS NULL;

-- Select category name and count of discontinued products grouped by category name, filtered and ordered
SELECT
  category.name,
  COUNT(product_id) AS discontinued_products_number
FROM product
JOIN category
  ON product.category_id = category.category_id
WHERE discontinued IS TRUE
GROUP BY category.name
HAVING COUNT(product_id) >= 3
ORDER BY COUNT(product_id) DESC;

-- Select count of employees where birth date and hire date are both null
SELECT
  COUNT(*) AS employees_number
FROM employee
WHERE birth_date IS NULL
  AND hire_date IS NULL;

-- Select contact name, purchase ID, and percentage of total price per customer
SELECT
  contact_name,
  purchase_id,
  ROUND(total_price * 100.0 / (SELECT SUM(total_price) FROM purchase WHERE customer_id = p.customer_id)) AS percentage
FROM purchase p
JOIN customer
  ON p.customer_id = customer.customer_id;

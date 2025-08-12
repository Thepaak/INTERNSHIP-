# **SQL Subqueries Practice – Cars Sales Database**

## **Objective**

Demonstrate the use of **subqueries** in `SELECT`, `WHERE`, and `FROM` clauses to perform complex filtering, aggregation, and data summarization in SQL.


## **Tools Used**

* **DB Browser for SQLite** / **MySQL Workbench**
* SQL Database containing:

  * `cars` (Car details)
  * `customers` (Customer details)
  * `emplo` (Employee details)
  * `sales` (Sales transactions)

---

## **Deliverables**

* SQL queries with nested logic using:

  1. **Scalar subqueries**
  2. **Correlated subqueries**
  3. **Subqueries inside `IN`**
  4. **Subqueries inside `EXISTS`**
  5. **Derived tables (subquery in `FROM`)**

---

## **Hints / Mini Guide**

* **Scalar Subquery** → Returns a single value
  *Example:* `(SELECT COUNT(*) FROM sales)`
* **Correlated Subquery** → References a column from the outer query
  *Example:* `WHERE price > (SELECT AVG(price) FROM ...)`
* **Subquery with IN** → Filters based on multiple matching values
  *Example:* `WHERE id IN (SELECT ...)`
* **Subquery with EXISTS** → Checks if matching records exist
  *Example:* `WHERE EXISTS (SELECT 1 FROM ...)`
* **Derived Table** → Subquery used as a table in `FROM`
  *Example:* `FROM (SELECT ...) AS temp`


### **1. Scalar Subquery in SELECT**

SELECT 
    car_id,
    car_name,
    car_model,
    car_price,
    (SELECT SUM(sales_amount) 
     FROM sales 
     WHERE sales.car_id = cars.car_id) AS total_sales_for_car
FROM cars;

### **2. Subquery in WHERE (IN example)**

SELECT customer_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM sales
    WHERE car_id IN (
        SELECT car_id 
        FROM cars
        WHERE car_price > 500000
    )
);

### **3. Derived Table in FROM**

SELECT 
    emplo_id,
    emplo_name,
    avg_sales
FROM (
    SELECT 
        e.emplo_id,
        e.emplo_name,
        AVG(s.sales_amount) AS avg_sales
    FROM emplo e
    JOIN sales s ON e.emplo_id = s.emplo_id
    GROUP BY e.emplo_id, e.emplo_name
) AS emp_avg_sales;

### **4. Correlated Subquery**

SELECT car_id, car_name, car_price
FROM cars c
WHERE car_price > (
    SELECT AVG(c2.car_price)
    FROM cars c2
    JOIN sales s2 ON c2.car_id = s2.car_id
    WHERE s2.emplo_id IN (
        SELECT s3.emplo_id
        FROM sales s3
        WHERE s3.car_id = c.car_id
    )
);


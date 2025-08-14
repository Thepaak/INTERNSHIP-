## **Tools Used**

* DB Browser for SQLite
* MySQL Workbench

## **Description**

Views in SQL are virtual tables created using `CREATE VIEW` statements. They store query definitions and can be used just like tables to retrieve data.
They help:

* Simplify complex queries
* Provide abstraction from the base tables
* Restrict access to sensitive columns

---

## **Tables Used**

1. **cars**
2. **customers**
3. **emplo** (employees)
4. **sales**

---

## **Examples**

### **1. Create a View for Sales Details**

```sql
CREATE VIEW SalesDetails AS
SELECT 
    s.sales_is,
    s.sales_date,
    s.sales_amount,
    c.car_name,
    c.car_model,
    cu.customer_name,
    e.emplo_name,
    e.emplo_role
FROM sales s
JOIN cars c ON s.car_id = c.car_id
JOIN customers cu ON s.customer_id = cu.customer_id
JOIN emplo e ON s.emplo_id = e.emplo_id;
```

---

### **2. Retrieve Data from the View**

```sql
SELECT * FROM SalesDetails;
```

---

### **3. Filter Data Using the View**

```sql
SELECT * 
FROM SalesDetails
WHERE car_name = 'BMW';
```

---

### **4. Create a View for Available Cars**

```sql
CREATE VIEW AvailableCars AS
SELECT car_id, car_name, car_model, car_price
FROM cars
WHERE Status = 'Available';
```

---

### **5. Create a View to Hide Sensitive Data**

```sql
CREATE VIEW CustomerPublicInfo AS
SELECT customer_name, phone_num
FROM customers;
```

# Online Retail Sales Database

## Objective
Design and implement a normalized SQL schema for an e-commerce platform.  
The database supports customer management, order processing, product catalog, and payment tracking.

## Tools
- MySQL Workbench  
- dbdiagram.io (for ER diagram)

## Schema (3NF)
- **Customers**: Stores customer details  
- **Products**: Contains product catalog  
- **Orders**: Captures order transactions  
- **Order_Items**: Junction table for many-to-many relation between orders and products  
- **Payments**: Stores payment details for each order  

## Sample Queries
1. Total sales by category  
2. Top 3 products by revenue  
3. Customer order history  
4. Views: Sales summary per order  
5. Procedure: Get orders by customer  
6. Trigger: Reduce stock after order item insert  

## Deliverables
- ER Diagram  
- SQL schema (`schema.sql`)  
- Sample data (`sample_data.sql`)  
- Queries (`queries.sql`)  
- Views, triggers, stored procedures (`logic.sql`)  
- Reports (screenshots/exports)  
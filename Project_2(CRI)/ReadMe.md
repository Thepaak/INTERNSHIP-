# Crime Record & Investigation Database

## Objective
Design a SQL system to store and query criminal investigation records.  
The database manages officers, cases, suspects, and evidence with chain-of-custody tracking.

## Tools
- MySQL Workbench  
- dbdiagram.io (for ER diagram)

## Schema
- **Officers**: Investigating officers with rank and department  
- **Cases**: Investigation records with status (Open, Closed, Pending)  
- **Suspects**: People linked to cases with their current status  
- **Evidence**: Items collected, with chain-of-custody logging  
- **Case_Suspects**: Junction table linking suspects to cases with roles  

## Features
1. Queries: Solved/unsolved case analysis  
2. Views: Officer workload report  
3. Trigger: Updates chain-of-custody automatically when new evidence is added  
4. Reports: Case summary with officers and suspects involved  

## Deliverables
- ER Diagram  
- SQL schema (`crime_schema.sql`)  
- Sample data (`crime_data.sql`)  
- Queries (`crime_queries.sql`)  
- Views & Triggers (`crime_logic.sql`)  
- Reports (screenshots/exports)  

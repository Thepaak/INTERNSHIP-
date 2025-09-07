CREATE OR REPLACE VIEW v_officer_workload AS
SELECT 
    o.officer_name, 
    o.officer_rank,   -- use officer_rank instead of rank
    o.department,
    COUNT(c.case_id) AS assigned_cases
FROM officers o
LEFT JOIN cases c ON o.officer_id = c.officer_id
GROUP BY o.officer_name, o.officer_rank, o.department;



SELECT * FROM v_officer_workload;

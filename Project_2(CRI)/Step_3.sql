-- Case status analysis
SELECT case_status, COUNT(*) AS total_cases
FROM cases
GROUP BY case_status;


SELECT c.case_title, s.suspect_name, cs.role
FROM case_suspects cs
JOIN suspects s ON cs.suspect_id = s.suspect_id
JOIN cases c ON cs.case_id = c.case_id
WHERE c.case_id = 1;


SELECT o.officer_name, COUNT(c.case_id) AS total_cases
FROM officers o
LEFT JOIN cases c ON o.officer_id = c.officer_id
GROUP BY o.officer_name
ORDER BY total_cases DESC;

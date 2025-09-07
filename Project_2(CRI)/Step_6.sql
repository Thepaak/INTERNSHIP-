SELECT c.case_id, c.case_title, c.case_status,
       o.officer_name AS lead_officer,
       COUNT(cs.suspect_id) AS suspects_involved
FROM cases c
LEFT JOIN officers o ON c.officer_id = o.officer_id
LEFT JOIN case_suspects cs ON cs.case_id = c.case_id
GROUP BY c.case_id, c.case_title, c.case_status, o.officer_name
ORDER BY c.case_id;

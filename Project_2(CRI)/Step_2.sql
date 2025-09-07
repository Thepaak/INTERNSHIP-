INSERT INTO officers (officer_name, officer_rank, department) VALUES
('Rajesh Kumar','Inspector','Homicide'),
('Anita Sharma','Sub-Inspector','Cyber Crime'),
('Vikram Rao','Constable','Narcotics');


INSERT INTO cases (case_title, case_status, opened_date, officer_id) VALUES
('Bank Robbery at Delhi','Closed','2025-01-05',1),
('Cyber Fraud – Online Scam','Open','2025-02-15',2),
('Drug Smuggling Case','Pending','2025-03-01',3);


INSERT INTO suspects (suspect_name, dob, status) VALUES
('Amit Verma','1990-06-12','Arrested'),
('Suresh Gupta','1985-11-03','Wanted'),
('Neha Reddy','1995-08-21','Released');


INSERT INTO evidence (case_id, description, collected_date) VALUES
(1,'CCTV Footage from bank','2025-01-06'),
(2,'Transaction logs from bank accounts','2025-02-20'),
(3,'Confiscated narcotics shipment','2025-03-05');


INSERT INTO case_suspects VALUES
(1,1,'Prime Suspect'),
(2,2,'Prime Suspect'),
(3,3,'Witness');


CREATE DATABASE crime_db;
USE crime_db;

CREATE TABLE officers (
    officer_id INT AUTO_INCREMENT PRIMARY KEY,
    officer_name VARCHAR(100) NOT NULL, 
    officer_rank VARCHAR(50),
    department VARCHAR(100)
);


CREATE TABLE cases (
    case_id INT AUTO_INCREMENT PRIMARY KEY,
    case_title VARCHAR(150) NOT NULL,
    case_status ENUM('Open','Closed','Pending') NOT NULL,
    opened_date DATE,
    closed_date DATE,
    officer_id INT,
    FOREIGN KEY (officer_id) REFERENCES officers(officer_id)
);


CREATE TABLE suspects (
    suspect_id INT AUTO_INCREMENT PRIMARY KEY,
    suspect_name VARCHAR(100) NOT NULL,
    dob DATE,
    status ENUM('Arrested','Wanted','Released')
);


CREATE TABLE evidence (
    evidence_id INT AUTO_INCREMENT PRIMARY KEY,
    case_id INT,
    description TEXT,
    collected_date DATE,
    chain_of_custody TEXT DEFAULT 'Initial Entry',
    FOREIGN KEY (case_id) REFERENCES cases(case_id)
);


CREATE TABLE case_suspect(
    case_id INT,
    suspect_id INT,
    role VARCHAR(50),
    PRIMARY KEY (case_id, suspect_id),
    FOREIGN KEY (case_id) REFERENCES cases(case_id),
    FOREIGN KEY (suspect_id) REFERENCES suspects(suspect_id)
);


CREATE INDEX idx_case_status ON cases(case_status);
CREATE INDEX idx_suspect_name ON suspects(suspect_name);

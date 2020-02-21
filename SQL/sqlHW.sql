-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS DEPARTMENTS
(
    dept_no VARCHAR(30) NOT NULL,
    dept_name VARCHAR(30),
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS ""DEPARTMENT EMP""
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(30),
    from_date DATE,
    to_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS ""DEPARTMENT MGR""
(
    dept_no VARCHAR(30) NOT NULL,
    emp_no INTEGER,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS EMPLOYEES
(
    emp_no INTEGER NOT NULL,
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    gender VARCHAR(10),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS SALARIES
(
    emp_no INTEGER NOT NULL,
    salary INTEGER,
    from_date DATE,
    to_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS TITLES
(
    emp_no INTEGER NOT NULL,
    title VARCHAR(50),
    from_date INTEGER,
    to_date DATE,
    PRIMARY KEY(emp_no)
);


-- Create FKs
ALTER TABLE "DEPARTMENT EMP"
    ADD    FOREIGN KEY (dept_no)
    REFERENCES DEPARTMENTS(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE "DEPARTMENT MGR"
    ADD    FOREIGN KEY (dept_no)
    REFERENCES DEPARTMENTS(dept_no)
    MATCH SIMPLE
;
    
ALTER TABLE "DEPARTMENT MGR"
    ADD    FOREIGN KEY (emp_no)
    REFERENCES EMPLOYEES(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE TITLES
    ADD    FOREIGN KEY (emp_no)
    REFERENCES EMPLOYEES(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE SALARIES
    ADD    FOREIGN KEY (emp_no)
    REFERENCES EMPLOYEES(emp_no)
    MATCH SIMPLE
;
    
ALTER TABLE "DEPARTMENT EMP"
    ADD    FOREIGN KEY (emp_no)
    REFERENCES EMPLOYEES(emp_no)
    MATCH SIMPLE
;
    

-- Create Indexes


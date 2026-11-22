-- 											


/*

SQL Basics

What is Database?
	A Database is an organised collection of data so that it can be easily accessed,managed and updated.
	
What is DBMS?
	DBMS(Database management system) is software that helps to create,store,manage and retrieve data from a database

What is RDBMS?
	RDBMS(Relational database management system) is a type of DBMS that stores data in the form of tables(rows and columns)
	and  the data in tables are related to each other

	Examples: MySQL,PostgreSQL,Oracle,SQL Server,etc.

What is SQL?
	SQL(Structured Query Language) is a standard language used to communicate with databases. It is used to perform operations like 
	creating,reading,updating and deleting data.
    
*/

-- DDL Commands
-- DDL - Data Definition Language

/*

| Command   	| 		Purpose 											| Example 					|

| **CREATE** 	| 		Creates a new database object 						| `CREATE TABLE` 			|
| **ALTER** 	| 		Modifies an existing object 						| Add/modify/drop a column 	|
| **DROP** 		| 		Deletes an object completely 						| Delete a table 			|
| **TRUNCATE** 	| 	Removes all rows but keeps the table structure 			| Empty a table 			|
| **RENAME** 	| 		Changes the name of an object 						| Rename a table 			|

*/

--CREATE
CREATE TABLE employees(
	employee_id INT,
	name VARCHAR(50),
	salary NUMERIC(10,2)
);


SELECT * FROM employees;

--ALTER 
ALTER TABLE employees 
ADD COLUMN department VARCHAR(60);

--Modify a column 
ALTER TABLE employees 
ALTER COLUMN name TYPE VARCHAR(100);

--DROP
ALTER TABLE employees 
DROP COLUMN department;

--Drop the entire table 
DROP TABLE employees;

--TRUNCATE - Removes all rows but keeps the table structure

TRUNCATE TABLE employees; 

--RENAME - rename a table 
ALTER TABLE employees 
RENAME TO demo;

SELECT * FROM demo;

ALTER TABLE demo
RENAME TO employees;






-- DML 
-- DML - Data Manipulation Language
/*

DML commands are used to insert, modify, and delete data inside tables.

Command		Purpose						Example

INSERT		Adds new rows				INSERT INTOrows
INSERT INTO employees(employee_id,name,salary)
VALUES
(1,'Sky',60000);
UPDATE		Modifies existing rows		UPDATE
DELETE		Removes rows				DELETE

*/

--INSERT - adds data to a table

INSERT INTO employees(employee_id,name,salary)
VALUES
(1,'Sky',60000);

SELECT * FROM employees;

--mulitple rows
INSERT INTO employees(employee_id,name,salary)
VALUES
(2,'Gun',65000),
(3,'Cloud',90000);

--UPDATE - Always be careful with WHERE. Without it, all rows can be updated.
UPDATE employees
SET salary = 900
WHERE employee_id = 1;


--DELETE - Remove rows - always use where. without it all rows will delete
DELETE FROM employees
WHERE employee_id = 1;


/*

DDL → Changes table/database structure
      CREATE
      ALTER
      DROP
      TRUNCATE
      RENAME

DML → Changes data inside tables
      INSERT
      UPDATE
      DELETE
	  
*/



SHOW port;

SELECT current_user;


-- SQL foundamentals concepts
SELECT * FROM employees;
SELECT * FROM demo;


INSERT INTO employees(employee_id,name,salary)
VALUES(3,'Sky',59000);

--DISTINCT
SELECT DISTINCT(employee_id)FROM employees;

--WHERE 
SELECT employee_id,name,salary FROM employees WHERE salary > 75000 ;

--LIMIT 
SELECT * FROM employees;

SELECT * FROM employees LIMIT 1;

SELECT * FROM employees LIMIT 2;

--OFFSET
SELECT * FROM employees OFFSET 2;


INSERT INTO employees(employee_id,name,salary)
VALUES(1,'Cold',98888)



DROP DATABASE IF EXISTS employees;
CREATE DATABASE employees;

USE employees;

CREATE TABLE department (
  -- CREATE id, name COLUMNS
  -- MAKE id AS PRIMARY KEY
  -- T*ODO: YOUR CODE HERE
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(30) NOT NULL
);

CREATE TABLE role (
  -- CREATE id AS INTERGER, title AS VARCHAR, salary AS DECIMAL, deplartment_id AS INTEGER
  -- MAKE id As PRIMARY KEY
  -- MAKE department_id AS FOREIGN KEY REFERENCING department TABLE AND
  -- MAKE CONSTRAINT 'ON DELETE CASCADE' (WITHOUT QUOTES) ON THIS FOREIGN KEY
  -- T*ODO: YOUR CODE HERE
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INTEGER NOT NULL,
  FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE CASCADE

);

CREATE TABLE employee (
  -- CREATE COLUMNS: id AS INT, first_name AS VARCHAR, last_name AS VARCHAR, role_id AS INTEGER, AND manager_id AS INT.
  -- MAKE id As PRIMARY KEY
  -- MAKE role_id AS FOREIGN KEY REFERENCING role TABLE AND MAKE CONSTRAINT ON DELETE CASCADE ON THIS FOREIGN KEY
  -- MAKE manager_id AS FOREIGN KEY REFERENCING employee TABLE ITSELF AND MAKE CONSTRAINT 'ON DELETE SET NULL' ON THIS FOREIGN KEY
  -- T*ODO: YOUR CODE HERE
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  manager_id INT,
  FOREIGN KEY (role_id)
    REFERENCES role(id)
    ON DELETE CASCADE,

  FOREIGN KEY (manager_id)
    REFERENCES employee(id)
    ON DELETE SET NULL
);

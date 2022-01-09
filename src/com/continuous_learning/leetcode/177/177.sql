CREATE TABLE IF NOT EXISTS leet_code_177_employee (
id INT,
salary INT
);

INSERT INTO leet_code_177_employee (id, salary) VALUES ('1', '100');
INSERT INTO leet_code_177_employee (id, salary) VALUES ('2', '200');
INSERT INTO leet_code_177_employee (id, salary) VALUES ('3', '300');

-- Answer for MYSQL
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
DECLARE M INT;
SET M = N - 1;
  RETURN (
      SELECT DISTINCT(salary)
      FROM Employee
      ORDER BY salary DESC
      LIMIT M, 1
  );
END


select F_id from Farm
where F_id >10 and F_id <40 ;

SELECT * FROM Worker 
WHERE Salary > (SELECT AVG(Salary) FROM Worker);

SELECT F_id FROM Farm
WHERE F_id IN (SELECT Farm_id FROM Worker)
AND F_id IN (SELECT F_id FROM Machine);

SELECT COUNT(*) AS TotalWarehouses FROM Warehouse;

SELECT W_name, Email FROM Worker;
DELETE FROM Worker WHERE Salary <= 2000;

SELECT Warehouse_Location, COUNT(W_id) AS WorkerCount
FROM Worker
GROUP BY Warehouse_Location;
UPDATE Worker SET Salary = Salary + 500 WHERE Warehouse_Location = 'Cairo';

SELECT * FROM Farm
WHERE F_id NOT IN (SELECT Farm_id FROM Worker);

SELECT * FROM Worker
WHERE Salary = (SELECT MAX(Salary) FROM Worker);

SELECT F_location FROM Farm
WHERE F_id IN (SELECT F_id FROM Machine);

SELECT location, COUNT(*) 
FROM Warehouse
GROUP BY location;

SELECT Machine.Type, Farm.F_location 
FROM Machine
INNER JOIN Farm ON Machine.F_id = Farm.F_id;

SELECT Worker.W_name, Warehouse.location 
FROM Worker
INNER JOIN Warehouse ON Worker.Warehouse_C_id = Warehouse.C_id;

DELETE FROM Farm WHERE Manager_id IS NULL;

DELETE FROM Machine WHERE F_id = 3;

SELECT Farm.F_location, Worker.W_name AS Manager
FROM Farm
INNER JOIN Worker ON Farm.Manager_id = Worker.W_id;

SELECT Farm_id, SUM(Salary) AS TotalSalaries 
FROM Worker 
GROUP BY Farm_id;

SELECT * FROM Worker WHERE W_sex = 'Male';

SELECT * FROM Warehouse WHERE Amount < 1000;

SELECT Farm_id FROM Worker GROUP BY Farm_id HAVING COUNT(W_id) > 7;

UPDATE Worker SET Salary = Salary * 1.15 WHERE W_sex = 'male';

DELETE FROM Warehouse WHERE Amount = 0;

SELECT W1.W_name AS Worker, W2.W_name AS Manager
FROM Worker W1
INNER JOIN Worker W2 ON W1.Manager_id = W2.W_id;

SELECT F_id 
FROM Worker 
GROUP BY F_id 
ORDER BY COUNT(W_id) DESC 
LIMIT 1;
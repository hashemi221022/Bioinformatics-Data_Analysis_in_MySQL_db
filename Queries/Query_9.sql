-- Question 9 : Find all samples from experiments conducted in a specific date.

SELECT *
FROM samples s
JOIN experiments e USING (experiment_id)
WHERE e.date >= '2023-02-01'



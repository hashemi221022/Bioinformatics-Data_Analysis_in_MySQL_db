-- Question 4 : Find all experiments that have samples from a specific species.

SELECT t1.name,
t1.date,
t1.description,
s.name
FROM (
	SELECT * 
	FROM experiments
	JOIN samples USING (experiment_id)
) AS t1
JOIN species s USING (species_id)
WHERE s.name = "Homo sapiens"
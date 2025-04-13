-- Question 14 : List all experiments and the number of samples collected for each experiment.

SELECT 
	e.name,
    COUNT(sample_id) AS number_of_sample
FROM 
	experiments e
JOIN 
	samples s USING (experiment_id)
GROUP BY e.name

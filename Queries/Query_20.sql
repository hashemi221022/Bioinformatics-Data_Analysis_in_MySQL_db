-- Question 20 : List all proteins that have sequences matching a specific motif.

SELECT 
	protein_name,
    sequence
FROM 
	proteins
WHERE 
	sequence LIKE '%AKGQ%'
-- Question 6 : Find the longest protein sequence in the database.

SELECT 
	p.protein_name,
    p.sequence,
    LENGTH(p.sequence) AS lenght
FROM proteins p
JOIN genes g USING (gene_id)
ORDER BY LENGTH(p.sequence) DESC 
LIMIT 1

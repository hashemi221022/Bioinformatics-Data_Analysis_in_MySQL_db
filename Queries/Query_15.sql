-- Question 15 : Find all genes that have been published in a specific journal.

SELECT 
	g.gene_name,
    p.journal
FROM 
	genes g
JOIN 
	gene_publications gp USING (gene_id)
JOIN 
	publications p USING (publication_id)
WHERE p.journal = 'Nature'
-- Question 17 : List all genes with their corresponding protein sequences, if available.

SELECT 
	g.gene_name,
    p.sequence
FROM 
	genes g
 LEFT JOIN 
	proteins p USING (gene_id)

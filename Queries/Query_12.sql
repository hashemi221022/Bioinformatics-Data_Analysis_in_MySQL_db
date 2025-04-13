-- Question 12 : Find all genes that have no associated annotations.

SELECT 
	*
FROM genes
JOIN annotations USING (gene_id)
WHERE annotation_id IS NULL;
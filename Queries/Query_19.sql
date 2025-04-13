-- Question 19 : Retrieve the top 5 genes with the most annotations.

SELECT 
	g.gene_name,
    COUNT(a.annotation_id) AS number_of_annotation
FROM 
	genes g
JOIN 
	annotations a USING (gene_id)
GROUP BY g.gene_name
ORDER BY number_of_annotation DESC
LIMIT 5
-- Question 11 : Count the number of pathways each gene is involved in.
SELECT 
	g.gene_name,
	COUNT(t1.pathway_id) AS number_of_pathway
FROM (
	SELECT * 
	FROM pathways
	JOIN gene_pathways USING (pathway_id)
) AS t1
JOIN genes g USING (gene_id)
GROUP BY g.gene_name
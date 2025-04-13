-- Question 16 : Retrieve all pathways and the number of genes involved in each pathway.

SELECT 
	pathway_name,
    COUNT(gene_id) AS number_of_genes
    
FROM 
	genes g
JOIN 
	gene_pathways gp USING (gene_id)
JOIN 
	pathways p USING (pathway_id)
GROUP BY pathway_name
-- Question 10 : Get the info from species that have genes involved in a specific pathway

SELECT *
FROM (
	SELECT *
	FROM genes
	JOIN gene_pathways USING(gene_id)
) AS t1
JOIN species s USING(species_id)
JOIN pathways p USING (pathway_id)
WHERE p.pathway_name = 'Apoptosis'




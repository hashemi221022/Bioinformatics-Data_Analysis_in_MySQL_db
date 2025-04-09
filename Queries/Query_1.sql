-- Question 1 : List all species and the number of genes associated with each species.

SELECT
	s.name AS "species name",
    count(g.gene_id) AS "number of gene"
FROM genes g
JOIN species s USING (species_id)
GROUP BY s.name
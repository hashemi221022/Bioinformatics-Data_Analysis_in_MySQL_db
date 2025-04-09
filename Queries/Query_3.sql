-- Question 3 : Retrieve all annotations for genes that belong to a specific species

SELECT t1.gene_id,
t1.annotation_id,
t1.description,
s.name AS "species name"
FROM (
	SELECT 
		g.gene_id,
        g.species_id,
		a.annotation_id,
		a.description
	FROM genes g
	JOIN annotations a USING (gene_id)
) AS t1
JOIN species s USING (species_id)
WHERE s.name = "Homo sapiens"
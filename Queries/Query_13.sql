-- Question 12 : Retrieve the sequences of all proteins associated with genes from a specific species.

SELECT 
	g.gene_name,
    g.sequence,
    p.protein_name,
    s.name
FROM genes g
JOIN proteins p USING (gene_id)
JOIN species s USING (species_id)
WHERE s.name = 'Homo sapiens'
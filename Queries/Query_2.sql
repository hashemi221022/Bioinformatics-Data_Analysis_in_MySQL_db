-- Question 2 : Find all proteins that are coded by genes involved in a specific pathway.

SELECT 
	s.name,
    g.gene_name,
    g.sequence,
    pa.pathway_name,
    pa.description,
    p.protein_name,
    p.sequence

FROM species s
JOIN genes g USING (species_id)
JOIN gene_pathways gp USING (gene_id)
JOIN pathways pa USING (pathway_id)
JOIN proteins p USING (gene_id)
WHERE pathway_name = "Apoptosis"

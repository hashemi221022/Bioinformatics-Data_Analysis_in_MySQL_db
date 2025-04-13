-- Question 17 : Find all species that have genes published in the last five years.

SELECT 
	 DISTINCT s.name
FROM 
	species s
LEFT JOIN 
	genes g USING (species_id)
LEFT JOIN 
	gene_publications gp USING (gene_id)
LEFT JOIN publications p USING (publication_id)
WHERE p.date >= DATE_SUB(CURDATE(), INTERVAL 5 YEAR)
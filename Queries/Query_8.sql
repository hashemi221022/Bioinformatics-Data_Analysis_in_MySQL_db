-- Question 8 : List all genes that have been annotated with a specific keyword.

SELECT g.gene_id,
g.gene_name,
g.sequence,
a.description
FROM genes g
JOIN annotations a USING (gene_id)
WHERE a.description LIKE "%tumor%"


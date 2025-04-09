-- Question 7 : Retrieve all publications related to a specific gene.

SELECT g.gene_id,
t1.title,
t1.date,
t1.journal,
t1.doi,
g.gene_name
FROM (
	SELECT *
	FROM publications p
	JOIN gene_publications gp USING(publication_id)
) AS t1
JOIN genes g USING(gene_id)
WHERE g.gene_name = "BRCA1"

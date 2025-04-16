USE bioinformatics_db;
CREATE OR REPLACE VIEW publications_with_genes AS
	SELECT
    p.publication_id,
    p.title,
    p.date,
    p.journal,
    p.doi,
	g.gene_name,
    g.sequence
	FROM genes g
    JOIN gene_publications USING (gene_id)
    JOIN publications p USING (publication_id)
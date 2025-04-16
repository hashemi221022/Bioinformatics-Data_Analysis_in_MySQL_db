USE bioinformatics_db;
CREATE OR REPLACE VIEW proteins_with_genes AS
	SELECT 
		p.protein_id,
        p.protein_name,
        p.sequence,
        g.gene_name
	FROM proteins p
	JOIN genes g USING (gene_id)
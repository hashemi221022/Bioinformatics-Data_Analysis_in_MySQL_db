USE bioinformatics_db;
CREATE OR REPLACE VIEW annotations_with_genes_and_species AS
	SELECT
		a.annotation_id,
        a.description,
        g.gene_name,
        s.name AS species_name
	FROM annotations a
    JOIN genes g USING (gene_id)
    JOIN species s USING (species_id);
USE bioinformatics_db;
CREATE OR REPLACE VIEW genes_with_species AS
	SELECT 
		g.gene_id,
        g.gene_name,
        g.sequence,
        p.name AS species_name
	FROM genes g
	JOIN species p USING (species_id)
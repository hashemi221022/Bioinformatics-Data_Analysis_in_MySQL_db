USE bioinformatics_db;
DROP PROCEDURE IF EXISTS get_genes_for_specie;

DELIMITER $$
CREATE PROCEDURE get_genes_for_specie(
	species_name VARCHAR(255)
)
BEGIN
	SELECT 
		G.gene_name,
        G.sequence
    FROM genes G
    JOIN species S USING (species_id)
    WHERE S.name = IFNULL (species_name, S.name);
END $$
DELIMITER ;
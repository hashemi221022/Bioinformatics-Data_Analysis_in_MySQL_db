USE bioinformatics_db;
DROP PROCEDURE IF EXISTS get_genome_sequence_for_specie;

DELIMITER $$
CREATE PROCEDURE get_genome_sequence_for_specie(
	common_name VARCHAR(255)
)
BEGIN
	SELECT 
		G.sequence
    FROM genomes G
    JOIN species S USING (species_id)
    WHERE s.common_name = IFNULL (common_name, S.common_name);
END $$
DELIMITER ;
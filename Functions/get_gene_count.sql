DELIMITER $$
CREATE FUNCTION get_gene_count(
species_id INT 
)
RETURNS INTEGER
READS SQL DATA
BEGIN
	DECLARE gene_count INT;
	SELECT 
		COUNT(species_id)
	INTO gene_count
	FROM genes g
	WHERE g.species_id = species_id;
RETURN gene_count;
END$$
DELIMITER ;

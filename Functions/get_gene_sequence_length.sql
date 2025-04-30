DELIMITER $$
CREATE FUNCTION get_gene_sequence_length(
gene_id INT 
)
RETURNS INTEGER
READS SQL DATA
BEGIN
	DECLARE gene_sequence_length INT;
	SELECT 
		LENGTH(g.sequence)
	INTO gene_sequence_length
	FROM genes g
	WHERE g.gene_id = gene_id;
RETURN gene_sequence_length;
END $$
DELIMITER ;

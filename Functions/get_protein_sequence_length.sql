DELIMITER $$
CREATE FUNCTION get_protein_sequence_length(
gene_id INT 
)
RETURNS INTEGER
READS SQL DATA
BEGIN
	DECLARE protein_sequence_length INT;
	SELECT 
		LENGTH(p.sequence)
	INTO protein_sequence_length
	FROM proteins p
	WHERE p.gene_id = gene_id;
RETURN protein_sequence_length;
END $$
DELIMITER ;

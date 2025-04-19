USE bioinformatics_db;
DROP PROCEDURE IF EXISTS update_gene_sequence;

DELIMITER $$
CREATE PROCEDURE update_gene_sequence(
	gene_id INT,
    new_sequence TEXT
)
BEGIN
	UPDATE genes G
    SET G.sequence = new_sequence 
    WHERE G.gene_id = gene_id;
END $$
DELIMITER ;
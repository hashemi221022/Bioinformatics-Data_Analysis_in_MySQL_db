USE bioinformatics_db;
DROP PROCEDURE IF EXISTS delete_gene;

DELIMITER $$
CREATE PROCEDURE delete_gene(
	gene_id INT
)
BEGIN
	DELETE FROM genes G
    WHERE G.gene_id = gene_id;
END $$
DELIMITER ;
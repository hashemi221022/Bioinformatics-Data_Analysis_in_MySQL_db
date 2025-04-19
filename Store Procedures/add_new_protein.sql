USE bioinformatics_db;
DROP PROCEDURE IF EXISTS add_new_protein;

DELIMITER $$
CREATE PROCEDURE add_new_protein(
	protein_name VARCHAR(255),
	gene_id INT,
    sequence TEXT
)
BEGIN
	INSERT INTO proteins (protein_name, gene_id, sequence) 
    VALUES (protein_name, gene_id, sequence);
END $$
DELIMITER ;
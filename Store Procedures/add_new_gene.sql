USE bioinformatics_db;
DROP PROCEDURE IF EXISTS add_new_gene;

DELIMITER $$
CREATE PROCEDURE add_new_gene(
	gene_name VARCHAR(255),
	species_id INT,
    sequence TEXT
)
BEGIN
	INSERT INTO genes (gene_name, species_id, sequence) 
    VALUES (gene_name, species_id, sequence);
END $$
DELIMITER ;
USE bioinformatics_db;
DROP PROCEDURE IF EXISTS delete_protein;

DELIMITER $$
CREATE PROCEDURE delete_protein(
	protein_id INT
)
BEGIN
	DELETE FROM proteins P
    WHERE P.protein_id = protein_id;
END $$
DELIMITER ;
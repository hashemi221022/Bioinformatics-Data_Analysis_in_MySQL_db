USE bioinformatics_db;
DROP PROCEDURE IF EXISTS get_protein_for_gene;

DELIMITER $$
CREATE PROCEDURE get_protein_for_gene(
	gene_name VARCHAR(255)
)
BEGIN
	SELECT 
		P.protein_name,
        P.sequence
    FROM proteins P
    JOIN genes G USING (gene_id)
    WHERE G.gene_name = IFNULL (gene_name, G.gene_name);
END $$
DELIMITER ;
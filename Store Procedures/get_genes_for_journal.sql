USE bioinformatics_db;
DROP PROCEDURE IF EXISTS get_genes_for_journal;

DELIMITER $$
CREATE PROCEDURE get_genes_for_journal(
	journal_name VARCHAR(255)
)
BEGIN
	SELECT 
		G.gene_name,
        G.sequence
    FROM genes G
    JOIN gene_publications GP USING (gene_id)
    JOIN publications P USING (publication_id)
    WHERE P.journal = IFNULL (journal_name, P.journal);
END $$
DELIMITER ;
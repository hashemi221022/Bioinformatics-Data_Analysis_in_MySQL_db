USE bioinformatics_db;
DROP PROCEDURE IF EXISTS get_genes_for_pathway;

DELIMITER $$
CREATE PROCEDURE get_genes_for_pathway(
	pathway_name VARCHAR(255)
)
BEGIN
	SELECT 
		G.gene_name,
        G.sequence
    FROM genes G
    JOIN gene_pathways GP USING (gene_id)
    JOIN pathways P USING (pathway_id)
    WHERE P.pathway_name = IFNULL (pathway_name, P.pathway_name);
END $$
DELIMITER ;
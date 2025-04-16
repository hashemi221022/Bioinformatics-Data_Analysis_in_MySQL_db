USE bioinformatics_db;
CREATE OR REPLACE VIEW experiments_with_samples_and_species AS
	SELECT
		e.experiment_id,
        e.name AS expriment_name,
        e.date AS expriment_date,
        e.description,
        sp.name AS species_name,
        s.data AS sample_data
	FROM experiments e
    JOIN samples s USING (experiment_id)
    JOIN species sp USING (species_id)
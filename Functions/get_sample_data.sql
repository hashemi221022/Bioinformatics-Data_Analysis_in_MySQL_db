DELIMITER $$
CREATE FUNCTION get_sample_data(
sample_id INT 
)
RETURNS TEXT
READS SQL DATA
BEGIN
	DECLARE sample_data TEXT;
	SELECT 
		s.data
	INTO sample_data
	FROM samples s
	WHERE s.sample_id = sample_id;
RETURN sample_data;
END $$
DELIMITER ;

CREATE DATABASE bioinformatics_db;
USE bioinformatics_db;

CREATE TABLE species (
    species_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    common_name VARCHAR(255)
);

CREATE TABLE genes (
    gene_id INT AUTO_INCREMENT PRIMARY KEY,
    gene_name VARCHAR(255) NOT NULL,
    species_id INT,
    sequence TEXT,
    FOREIGN KEY (species_id) REFERENCES species(species_id)
);

CREATE TABLE proteins (
    protein_id INT AUTO_INCREMENT PRIMARY KEY,
    protein_name VARCHAR(255) NOT NULL,
    gene_id INT,
    sequence TEXT,
    FOREIGN KEY (gene_id) REFERENCES genes(gene_id)
);

CREATE TABLE genomes (
    genome_id INT AUTO_INCREMENT PRIMARY KEY,
    species_id INT,
    sequence TEXT,
    FOREIGN KEY (species_id) REFERENCES species(species_id)
);

CREATE TABLE annotations (
    annotation_id INT AUTO_INCREMENT PRIMARY KEY,
    gene_id INT,
    description TEXT,
    FOREIGN KEY (gene_id) REFERENCES genes(gene_id)
);

CREATE TABLE experiments (
    experiment_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    date DATE,
    description TEXT
);

CREATE TABLE samples (
    sample_id INT AUTO_INCREMENT PRIMARY KEY,
    experiment_id INT,
    species_id INT,
    data TEXT,
    FOREIGN KEY (experiment_id) REFERENCES experiments(experiment_id),
    FOREIGN KEY (species_id) REFERENCES species(species_id)
);

CREATE TABLE pathways (
    pathway_id INT AUTO_INCREMENT PRIMARY KEY,
    pathway_name VARCHAR(255) NOT NULL,
    description TEXT
);

CREATE TABLE gene_pathways (
    gene_id INT,
    pathway_id INT,
    PRIMARY KEY (gene_id, pathway_id),
    FOREIGN KEY (gene_id) REFERENCES genes(gene_id),
    FOREIGN KEY (pathway_id) REFERENCES pathways(pathway_id)
);

CREATE TABLE publications (
    publication_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    date DATE,
    journal VARCHAR(255),
    doi VARCHAR(255)
);

CREATE TABLE gene_publications (
    gene_id INT,
    publication_id INT,
    PRIMARY KEY (gene_id, publication_id),
    FOREIGN KEY (gene_id) REFERENCES genes(gene_id),
    FOREIGN KEY (publication_id) REFERENCES publications(publication_id)
);





USE bioinformatics_db;

-- Insert species
INSERT INTO species (name, common_name) VALUES
('Homo sapiens', 'Human'),
('Mus musculus', 'Mouse'),
('Drosophila melanogaster', 'Fruit Fly');

-- Insert genes
INSERT INTO genes (gene_name, species_id, sequence) VALUES
('BRCA1', 1, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACT'),
('BRCA2', 1, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACC'),
('TP53', 1, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACT'),
('MYC', 2, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACT'),
('EGFR', 3, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACT');

-- Insert proteins
INSERT INTO proteins (protein_name, gene_id, sequence) VALUES
('BRCA1 Protein', 1, 'MTSKGQKLSGTS'),
('BRCA2 Protein', 2, 'MTQSKGQKLSGTS'),
('TP53 Protein', 3, 'MTPKGQKLSGTS'),
('MYC Protein', 4, 'MTQAKGQKLSGTS'),
('EGFR Protein', 5, 'MTSKGQKLSGTS');

-- Insert genomes
INSERT INTO genomes (species_id, sequence) VALUES
(1, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACTGCGTACGTAGCTAGCTAGCTAGCTAGCTGACT'),
(2, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACTGCGTACGTAGCTAGCTAGCTAGCTAGCTGACC'),
(3, 'ATGCGTACGTAGCTAGCTAGCTAGCTAGCTGACTGCGTACGTAGCTAGCTAGCTAGCTAGCTGACC');

-- Insert annotations
INSERT INTO annotations (gene_id, description) VALUES
(1, 'Involved in DNA repair'),
(2, 'Involved in tumor suppression'),
(3, 'Regulates the cell cycle'),
(4, 'Plays a role in cell proliferation'),
(5, 'Involved in cell signaling');

-- Insert experiments
INSERT INTO experiments (name, date, description) VALUES
('Cancer Research', '2023-01-01', 'Research on cancer-related genes'),
('Genome Sequencing', '2023-02-01', 'Sequencing of mouse genome'),
('Protein Analysis', '2023-03-01', 'Analysis of protein functions');

-- Insert samples
INSERT INTO samples (experiment_id, species_id, data) VALUES
(1, 1, 'Sample data for human cancer research'),
(2, 2, 'Sample data for mouse genome sequencing'),
(3, 3, 'Sample data for fruit fly protein analysis');

-- Insert pathways
INSERT INTO pathways (pathway_name, description) VALUES
('Apoptosis', 'Programmed cell death'),
('Cell Cycle', 'Regulation of cell division'),
('Signal Transduction', 'Transmission of molecular signals');

-- Insert gene_pathways
INSERT INTO gene_pathways (gene_id, pathway_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3);

-- Insert publications
INSERT INTO publications (title, date, journal, doi) VALUES
('BRCA1 and Cancer', '2023-01-15', 'Nature', '10.1038/nature12345'),
('Genome Sequencing in Mice', '2023-02-20', 'Science', '10.1126/science12345'),
('Protein Functions in Fruit Flies', '2023-03-10', 'Cell', '10.1016/j.cell.2023.12345');

-- Insert gene_publications
INSERT INTO gene_publications (gene_id, publication_id) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 2),
(5, 3);
CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    salario DECIMAL(8,2) NOT NULL
);

INSERT INTO tb_colaboradores(nome, cargo, idade, salario) VALUES
('Guilherme', 'Dev Full Stack Jr', 24, 2800.5),
('Taymara', 'Dev Front-End Jr', 25, 3050.5),
('Mariana', 'Scrum Master', 26, 4100.0),
('Vinicius', 'Dev RPA Pl', 27, 5000.0),
('Susy', 'Product Owner Sr', 24, 7250.0);

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;
UPDATE tb_colaboradores SET salario = 1820.1 WHERE id = 1; 


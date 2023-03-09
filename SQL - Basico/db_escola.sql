CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    matricula VARCHAR(255) NOT NULL,
    nome VARCHAR(255) NOT NULL,
    idade INT NOT NULL,
    nota DECIMAL(4,2) NOT NULL
);

INSERT INTO tb_estudantes(matricula, nome, idade, nota) VALUES
('11111111111', 'Guilherme', 18, 9.2), 
('22222222222', 'Jean', 15, 10),
('33333333333', 'Vinicius', 16, 7.4),
('44444444444', 'Susy', 17, 9.8),
('55555555555', 'Mariana', 17, 6),
('66666666666', 'João', 16, 5.4),
('77777777777', 'Maria', 18, 4.8),
('88888888888', 'Joana', 17, 3.9);

SELECT * FROM tb_estudantes;
SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;
UPDATE tb_estudantes SET matricula = 99999999999 WHERE id = 8;
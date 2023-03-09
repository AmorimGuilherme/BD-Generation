CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
estilo VARCHAR(255) NOT NULL,
nivel VARCHAR(255) NOT NULL
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
defesa BIGINT NOT NULL,
ataque BIGINT NOT NULL,
classe_id BIGINT NOT NULL,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id));

INSERT INTO tb_classes(estilo, nivel) VALUES
("Mago", 1),
("Guerreiro", 2),
("Espadachim", 3),
("Fada", 4),
("Bruxo", 5);

INSERT INTO tb_personagens(nome, defesa, ataque, classe_id) VALUES
("John", 5000, 5000, 1),
("Fred", 2000, 2500, 2),
("LordGuerreiro", 3000, 4500, 3),
("Anne", 1850, 3000, 4),
("Track", 5000, 3000, 5),
("Skool", 8540, 4500, 3),
("Looc", 1850, 3000, 1),
("Tasha", 5000, 3000, 5);

SELECT * FROM tb_personagens WHERE ataque BETWEEN 2000 AND 3000;

SELECT * FROM tb_personagens
INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.id = 3;

UPDATE tb_personagens SET nome = "Javero" WHERE id = 3; 


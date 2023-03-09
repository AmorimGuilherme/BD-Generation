CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    quantidade INT  NOT NULL,
    preco DECIMAL (8,2) NOT NULL
);

INSERT INTO tb_produtos(nome, descricao, quantidade, preco) VALUES
('Notebook', 'i5', 5, 5500.00),
('Celular', 'Motog', 3, 3500.00),
('Celular', 'Iphone', 8, 7100.00),
('TV', 'Smart 4K', 2, 2100.00),
('Relogio', 'Digital', 1, 550.00),
('TV', 'i5', 8, 1100.00),
('Notebook', 'i3', 10, 3410.00),
('Notebook', 'i7', 11, 4770.00);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;
UPDATE tb_produtos SET preco = 480 WHERE id = 5;

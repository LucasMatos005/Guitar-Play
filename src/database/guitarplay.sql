CREATE DATABASE guitarplay;
USE guitarplay;

CREATE TABLE usuario(
 id INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(50),
 email VARCHAR(50),
 senha VARCHAR(50),
 cpf CHAR(11),
 Nivel VARCHAR(45)
);

SELECT Nivel FROM usuario;
SELECT * FROM usuario;
UPDATE usuario SET nome = 'Wilson', email = 'wilson@gmail.com', cpf = '45654323456', senha = 'arroz##' WHERE id = 6;
UPDATE usuario SET Nivel = 'intermediário' WHERE id = 2;
UPDATE usuario SET Nivel = 'avançado' WHERE id = 4;
ALTER TABLE usuario DROP COLUMN cpf; 

CREATE TABLE quiz (
	id_quiz INT PRIMARY KEY AUTO_INCREMENT,
    quantidade_acertos INT,
    quantidade_erros INT,
    fkUsuario INT,
    FOREIGN KEY (fkUsuario) REFERENCES usuario(id)
);

SELECT quantidade_acertos, quantidade_erros FROM quiz;

CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

TRUNCATE TABLE aviso;

SHOW TABLES;

DROP TABLE nivel;

SELECT * FROM aviso;
SELECT * FROM usuario;
SELECT * FROM nivel;
DELETE FROM usuario WHERE id = 1;
SHOW TABLES;

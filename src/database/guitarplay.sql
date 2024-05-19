CREATE DATABASE guitarplay;
USE guitarplay;

CREATE TABLE nivel(
 idNivel INT PRIMARY KEY AUTO_INCREMENT,
 classificacao_nivel VARCHAR(45)
);

CREATE TABLE usuario(
 id INT PRIMARY KEY AUTO_INCREMENT,
 nome VARCHAR(50),
 email VARCHAR(50),
 senha VARCHAR(50),
 cpf CHAR(11),
 Nivel VARCHAR(45)
);

SHOW TABLES;

DROP TABLE nivel;

SELECT * FROM usuario;
SELECT * FROM nivel;

CREATE TABLE TESTE (
	id INT PRIMARY KEY AUTO_INCREMENT,
    detalhe VARCHAR(45)
);

INSERT INTO TESTE VALUES 
	(DEFAULT,"batata"),
    (DEFAULT,"maça"),
    (DEFAULT,"batata"),
    (DEFAULT,"pera"),
    (DEFAULT,"batata"),
    (DEFAULT,"tomate");
    
SELECT COUNT(id) FROM TESTE WHERE detalhe = 'batata';

DROP TABLE TESTE;

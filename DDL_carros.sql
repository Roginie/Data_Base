-- Cria uma base de dados (DATASE)

CREATE DATABASE bd_carro;

-- 	ASSESSAR A BASE DE DADOS 
USE bd_carro;

-- DELETE A BASE
DROP DATABASE bd_carro;

-- CRIA TABELA 
CREATE TABLE tb_carro(
id 	INT(10) NOT NULL,
marca VARCHAR(100) NOT NULL,
modelo VARCHAR(100) NOT NULL,
valor DECIMAL(10,2) NOT NULL,
cor VARCHAR(50) NOT NULL,
numero_vendas INT(5),
ano INT(5),
PRIMARY KEY(id)
);
-- NOT NULL -> CAMPO OBRIGATORIO 

SELECT * FROM tb_carro;

CREATE TABLE tb_proprietario(
id INT(10) NOT NULL,
nome varchar(100) NOT NULL,
id_carro INT(10) NOT NULL,

PRIMARY KEY (id),
FOREIGN KEY (id_carro) REFERENCES tb_carro(id)
);

CREATE TABLE historico_preco(
id INT(10) NOT NULL AUTO_INCREMENT,
data_modificacao DATETIME,
valor_anterior DECIMAL(10,2),
valor_novo DECIMAL(10,2),
id_carro INT(10) NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY (id_carro) REFERENCES tb_carro(id)
);

ALTER TABLE tb_proprietario ADD idade INT(3) NOT NULL; -- ALTERA UMA ESTRUTURA DE DADOS  --



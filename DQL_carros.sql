USE bd_carro;

-- Seleciona todos os registros  --
SELECT * FROM tb_proprietario;
SELECT * FROM tb_carro;

-- Seleciona apenas colunas informadas --
SELECT marca, modelo FROM tb_carro;

-- Seleciona o maior valor  --
SELECT MAX(valor) FROM tb_carro;
-- Selecions o menor valor  --
SELECT MIN(numero_vendas) FROM tb_carro;

-- Seleciona o maior e menor numeros de vendas + as colunas das tabela solicitada --
SELECT marca, modelo, ano FROM tb_carro WHERE valor = (SELECT MIN(valor) FROM tb_carro);

-- Secionar um elemento espercifico --
SELECT * FROM tb_carro WHERE marca = 'Honda';

SELECT * FROM tb_carro WHERE cor = 'Branco';

-- Selecinar a quantidade de registros existentes --
SELECT COUNT(id) FROM tb_carro;

-- Informar a soma de valores registrado --
SELECT SUM(valor) FROM tb_carro;

-- Selecciona e exibe os registros em ordem crescente ou descrecente --
SELECT * FROM tb_carro ORDER BY modelo ASC;
SELECT * FROM tb_carro ORDER BY marca DESC;

-- Informar a quantidade de registros de uma marca entre os anos de 1990 e 2012
SELECT COUNT(id) AS 'Total de registros', marca, ano FROM tb_carro WHERE ano BETWEEN '1990' AND '2024' GROUP BY marca, ano;



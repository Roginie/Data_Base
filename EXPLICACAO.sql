USE bd_carro;
-- INNER JOI 
-- RETONAR SOMENTE AS COLUNAS CORRESPONDENTE ENTRE AS TABELAS 
-- COLUNA id_carro NA TABELA PROPRIETARIO / ID NA TABELA CARRO

SELECT * FROM tb_proprietario AS P
INNER JOIN tb_carro AS C
ON P.id_carro = Cid;


-- todas os registros da minha primeira tabela sejam retornas,
-- mesmo que nao haja similaridade na primeira tabela
-- NULL

SELECT * FROM tb_proprietario
RIGHT JOIN tb_carro
ON tb_proprietario.id_carro = tb_carro.id;

-- ao contrario 
SELECT * FROM tb_carro
RIGHT JOIN tb_proprietario
ON tb_carro.id = tb_proprietario.id_carro;

-- LEFT JOIN 
-- VAI ME RETORNAR TODOS OS REGISTROS DA PRIMEIRA TABELA (ESQUERDA)
-- MAIS AS MILARIDADES DA SEGUNDA TABELA (DIREITA)
SELECT * FROM tb_carro AS C
LEFT JOIN tb_proprietario AS P
ON C.id = p .id_carro;

-- UNION
-- COMBINACAO DOS DOIS JOIN (RIGHT E LEFT)

SELECT * FROM tb_proprietario AS P
LEFT JOIN tb_carro AS C
ON P.id_carro = C.id
UNION 
SELECT * FROM tb_proprietario AS P 
RIGHT JOIN tb_carro AS C
ON C.id = P.id_carro
WHERE P.id_carro IS NULL;


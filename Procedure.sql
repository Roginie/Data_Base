USE bd_carro;

DELIMITER $$

CREATE PROCEDURE inserirCarro(
IN id_p INT(10), 
IN marca_p VARCHAR(255),
IN modelo_p VARCHAR(255),
IN valor_p DECIMAL(10,2),
IN cor_p VARCHAR(255),
IN numero_Vendas_p INT
)

BEGIN
                                        
INSERT INTO tb_carros(id, marca, modelo, valor, cor, numero_Vendas, ano)
VALUES (id_p, marca_p, modelo_p, cor_p, numero_Vendas_p, ano_p);

END $$
DELIMITER ;

CALL inserirCarro('11', 'Fiat', 'Uno', '20000', 'Uva', '52000', '2007');

SELECT * FROM tb_carros;



 
DELIMITER $$

CREATE PROCEDURE atualizaValorCarro(IN id_carro_p INT(10), IN novo_valor_p DECIMAL(10,2))
BEGIN

DECLARE valor_atual DECIMAL(10,2);
SELECT valor FROM tb_carros WHERE id = id_carro_p;

UPDATE tb_carros SET valor = novo_valor_p WHERE id = id_carro_p;

INSERT INTO historico_preco (id, data_modificacao, valor_anterior, valor_novo, id_carro)
VALUES (id_mod_p, NOW(), valor_atual, novo_valor_p, id_carro_p);


END $$
DELIMITER ;

CALL atualizaValorCarro('11', '2', '80000.00');
SELECT * FROM tb_carros;
SELECT * FROM historico_preco;
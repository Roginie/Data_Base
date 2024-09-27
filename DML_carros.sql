USE bd_carro;

SELECT * FROM tb_carro;

INSERT INTO tb_carro VALUES (
'1',
'Fiat',
'Uno',
'20000.00',
'Verde',
'50000',
'1990'
);

INSERT INTO tb_carro VALUES (
'2',
'Honda',
'Civic',
'30000.00',
'preto',
'65000',
'2008'
);

INSERT INTO tb_carro VALUES (
'3',
'Honda',
'City',
'45000.00',
'Cinza',
'75000',
'2001'
);

INSERT INTO tb_carro VALUES (
'4',
'BMW',
'i80',
'85000.00',
'Branca',
'90000',
'2006'
);

INSERT INTO tb_carro VALUES (
'5',
'Fiat',
'Palio',
'40000.00',
'Vermelho',
'90000',
'1990'
);

INSERT INTO tb_carro VALUES (
'6',
'Honda',
'XRE',
'20000.00',
'Verde',
'80000',
'2009'
);

INSERT INTO tb_carro VALUES (
'7',
'Chevrole',
'Monza',
'20000.00',
'Preto',
'50000',
'1990'
);

INSERT INTO tb_carro VALUES (
'8',
'Honda',
'Bros',
'20000.00',
'Vermelha',
'40000',
'2012'
);

INSERT INTO tb_carro VALUES (
'9',
'Fiat',
'Mobi',
'85000.00',
'Branco',
'65000',
'2020'
);

INSERT INTO tb_carro VALUES (
'10',
'Ferrari',
'Puru sange',
'20000.00',
'Vermelho',
'50000',
'2009'
);

SELECT * FROM tb_proprietario; -- ESSE COMANDO VERIFICAR TABAELA DO tb_PROPRIETAEIO --

INSERT INTO tb_proprietario VALUES (
'1',
'Bill',
'2',
'26'
);

INSERT INTO tb_proprietario VALUES (
'2',
'Marcos',
'3',
'28'
);

INSERT INTO tb_proprietario VALUES (
'3',
'Juam',
'4',
'22'
);

INSERT INTO tb_proprietario VALUES (
'4',
'Renata',
'5',
'19'
);

INSERT INTO tb_proprietario VALUES (
'5',
'Mateus',
'6',
'20'
);

UPDATE tb_carro SET valor = 150000 WHERE id = 1;

DELETE FROM tb_carro WHERE id = 10; -- ESSE COMANDO VERIFICAR TABAELA DO tb_PROPRIETAEIO --

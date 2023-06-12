--BACKUP DADOS A ELIMINAR
USE RETROSKILL
--Arranjos por Orçamento--REVER
INSERT INTO ARRANJOS VALUES ('Trabalho de Costura', 'Trabalhos de recorte, costura e arranjos básicos. Por hora', 20.00);
INSERT INTO ARRANJOS VALUES ('Trabalho de Costura Avançado', 'Trabalhos de recorte, costura e arranjos complexos. Por hora', 25.00);
INSERT INTO ARRANJOS VALUES ('Trabalho de Alfaiataria', 'Trabalhos à medida. Por hora', 50.00);

--Clientes
INSERT INTO CLIENTES VALUES ('Pedro', 'Neves', '502985634', '944444567', 'pedro.neves@gmail.com');
INSERT INTO CLIENTES VALUES ('Marta', 'Teixeira', '604726382', '955555678', 'marta.teixeira@gmail.com');
INSERT INTO CLIENTES VALUES ('Ricardo', 'Costa', '706382918', '966666789', 'ricardo.costa@gmail.com');
INSERT INTO CLIENTES VALUES ('Inês', 'Alves', '802938472', '977777890', 'ines.alves@gmail.com');
INSERT INTO CLIENTES VALUES ('João', 'Saraiva', '905726384', '988888901', 'joao.saraiva@gmail.com');
INSERT INTO CLIENTES VALUES ('Carolina', 'Rocha', '100926384', '900000012', 'carolina.rocha@gmail.com');
INSERT INTO CLIENTES VALUES ('Luís', 'Gomes', '203748291', '911111123', 'luis.gomes@gmail.com');
INSERT INTO CLIENTES VALUES ('Sara', 'Santos', '307365812', '922222234', 'sara.santos@gmail.com');
INSERT INTO CLIENTES VALUES ('Hugo', 'Carvalho', '401836294', '933333345', 'hugo.carvalho@gmail.com');
INSERT INTO CLIENTES VALUES ('Marta', 'Fernandes', '505726382', '944444456', 'marta.fernandes@gmail.com');
INSERT INTO CLIENTES VALUES ('Ricardo', 'Oliveira', '609365812', '955555567', 'ricardo.oliveira@gmail.com');
INSERT INTO CLIENTES VALUES ('Ana', 'Pereira', '706293481', '966666678', 'ana.pereira@gmail.com');
INSERT INTO CLIENTES VALUES ('Pedro', 'Gonçalves', '803748291', '977777789', 'pedro.goncalves@gmail.com');
INSERT INTO CLIENTES VALUES ('Carolina', 'Martins', '907365812', '988888890', 'carolina.martins@gmail.com');
INSERT INTO CLIENTES VALUES ('Inês', 'Figueira', '100836294', '900000001', 'ines.figueira@gmail.com');
INSERT INTO CLIENTES VALUES ('João', 'Rodrigues', '204726381', '911111112', 'joao.rodrigues@gmail.com');
INSERT INTO CLIENTES VALUES ('Sofia', 'Melo', '305726389', '922222223', 'sofia.melo@gmail.com');
INSERT INTO CLIENTES VALUES ('Mariana', 'Sousa', '408365812', '933333334', 'mariana.sousa@gmail.com');
INSERT INTO CLIENTES VALUES ('Luís', 'Carvalho', '503748291', '944444445', 'luis.carvalho@gmail.com');
INSERT INTO CLIENTES VALUES ('Rita', 'Lima', '607365813', '955555556', 'rita.lima@gmail.com');
INSERT INTO CLIENTES VALUES ('Hugo', 'Ferreira', '706293482', '966666667', 'hugo.ferreira@gmail.com');
INSERT INTO CLIENTES VALUES ('Daniel', 'Neves', '803748292', '977777778', 'daniel.neves@gmail.com');


--ID dos Clientes
SELECT * FROM Clientes

SELECT * FROM ZONAS

SELECT * FROM LOJAS

SELECT id_loja, nome_zona, id_zona_loja  FROM LOJAS
INNER JOIN ZONAS ON ZONAS.id_zona = LOJAS.id_zona_loja

SELECT * FROM TITULOS_EMPREGADOS

SELECT * FROM EMPREGADOS

SELECT id_empregado, nome_empregado, apelido_empregado, titulo_empregado,LOJAS.id_loja FROM EMPREGADOS
INNER JOIN TITULOS_EMPREGADOS ON TITULOS_EMPREGADOS.id_titulo_empregado = EMPREGADOS.id_titulo_empregado
INNER JOIN LOJAS ON LOJAS.id_loja = EMPREGADOS.id_loja_empregado

SELECT * FROM PECAS

SELECT * FROM MATERIAIS

SELECT * FROM TAMANHOS

SELECT * FROM CORES

SELECT * FROM FORNECEDORES

SELECT * FROM ARTIGOS

SELECT * FROM CLIENTES
ORDER BY nome_cliente ASC

SELECT * FROM ENCOMENDAS

SELECT id_encomenda, id_loja, nome_fornecedor, data_encomenda, data_entrega FROM ENCOMENDAS
INNER JOIN FORNECEDORES ON FORNECEDORES.id_fornecedor = ENCOMENDAS.id_fornecedor

SELECT * FROM LISTA_ARTIGOS

--VER COMO È QUE SE CRIA O TOTAL DA QUANTIDADE x PREÇO
SELECT ENCOMENDAS.id_encomenda, id_loja, nome_fornecedor, data_encomenda, nome_artigo, quantidade_artigo, preco_artigo ,data_entrega FROM ENCOMENDAS
INNER JOIN FORNECEDORES ON FORNECEDORES.id_fornecedor = ENCOMENDAS.id_fornecedor
INNER JOIN LISTA_ARTIGOS ON LISTA_ARTIGOS.id_encomenda = ENCOMENDAS.id_encomenda
INNER JOIN ARTIGOS ON ARTIGOS.id_artigo = LISTA_ARTIGOS.id_artigo

SELECT * FROM ARRANJOS

SELECT id_arranjo, ARRANJOS.id_peca, nome_peca, nome_arranjo, descricao_arranjo, preco_arranjo FROM ARRANJOS
INNER JOIN PECAS ON PECAS.id_peca = ARRANJOS.id_peca

SELECT * FROM ORDEM_TRABALHOS

SELECT * FROM LISTA_ARRANJOS

SELECT * FROM ORCAMENTOS

SELECT * FROM RECIBOS

SELECT * FROM REEMBOLSOS
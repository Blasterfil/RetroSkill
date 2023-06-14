USE RETROSKILL

--QUERY a
--Todas as lojas da zona de Lisboa CONCLU�DO
-- *CONCLU�DO*
SELECT * FROM LOJAS
INNER JOIN ZONAS ON ZONAS.id_zona = LOJAS.id_zona_loja
WHERE ZONAS.nome_zona = 'Lisboa'

--QUERY b
--Informa��o sobre os trabalhos n�o conclu�dos, por ordem crescente de data de in�cio (CONCLU�DO - REVER SELECT)
-- *CONCLU�DO*
SELECT id_ordem_trabalho, ORDEM_TRABALHOS.id_loja, nome_zona AS Zona_Loja, nome_cliente, apelido_cliente, nome_empregado, apelido_empregado, data_ordem_trabalho AS data_inicio, data_conclusao_trabalho AS Conclu�do FROM ORDEM_TRABALHOS
INNER JOIN LOJAS ON LOJAS.id_loja = ORDEM_TRABALHOS.id_loja
INNER JOIN ZONAS ON ZONAS.id_zona = LOJAS.id_zona_loja
INNER JOIN CLIENTES ON CLIENTES.id_cliente = ORDEM_TRABALHOS.id_cliente
INNER JOIN EMPREGADOS ON EMPREGADOS.id_empregado = ORDEM_TRABALHOS.id_empregado
WHERE data_conclusao_trabalho IS NULL
ORDER BY data_ordem_trabalho ASC

--QUERY c
--Os trabalhos urgentes aceites, solicitados pelo cliente
-- *CONCLU�DO*
SELECT * FROM ORDEM_TRABALHOS
WHERE trabalho_urgente = 1

--QUERY d
--O arranjo mais caro (VOU COLOCAR O ARRANJO MAIS CARO QUE FOI EFECTUADO - PODE SER O DA TABELA DE PRE�OS?)
SELECT * FROM LISTA_ARRANJOS


--QUERY e
--O custo do arranjo das pe�as, por tipo de arranjo (CONCLU�DO - REVER SELECT)
SELECT nome_arranjo, nome_peca, preco_arranjo FROM ARRANJOS
INNER JOIN PECAS ON PECAS.id_peca = ARRANJOS.id_peca
ORDER BY nome_arranjo

--QUERY f
--O tipo de arranjo que nunca foi pedido (VOU ESCOLHER O 13)
SELECT * FROM LISTA_ARRANJOS ORDER BY id_arranjo
SELECT * FROM ARRANJOS
SELECT ARRANJOS.id_arranjo, nome_arranjo FROM ARRANJOS
RIGHT JOIN LISTA_ARRANJOS ON LISTA_ARRANJOS.id_arranjo = ARRANJOS.id_arranjo
WHERE LISTA_ARRANJOS.id_arranjo <> ARRANJOS.id_arranjo

--QUERY g
--A loja que tem mais pedidos entregues (CONCLU�DO - REVER SELECT)
SELECT TOP 1 id_loja, COUNT(data_conclusao_trabalho) FROM ORDEM_TRABALHOS
GROUP BY id_loja

--QUERY h
--A quantidade de pe�as arranjadas da loja 1, dos �ltimos 7 dias
--(CONCLU�DO - REVER SELECT)

--QUERY i
--Os trabalhos que incluem arranjos de camisas e que ainda n�o foram levantados
--(CONCLU�DO - REVER SELECT)

--QUERY j
--Os trabalhos que n�o foram pagos e foram devolvidos
--(CONCLU�DO - REVER SELECT)

--QUERY k
--Os pedidos urgentes que incluem pe�as com pelo menos 2 cores diferentes
--CRIAR OT COM OS REQUISITOS PEDIDOS
--FALTA CONDICIONAR POR 2 E CORES DIFERENTES
SELECT * FROM ORDEM_TRABALHOS
SELECT * FROM LISTA_ARRANJOS
SELECT * FROM CORES

SELECT ORDEM_TRABALHOS.id_ordem_trabalho AS ID_OT, nome_cor FROM ORDEM_TRABALHOS
INNER JOIN LISTA_ARRANJOS ON LISTA_ARRANJOS.id_ordem_trabalho = ORDEM_TRABALHOS.id_ordem_trabalho
INNER JOIN CORES ON CORES.id_cor = LISTA_ARRANJOS.id_cor
WHERE trabalho_urgente = 1

--QUERY l
--Os trabalhos n�o devolvidos com a indica��o nas observa��es de que s�o pe�as sens�veis
--CRIAR OT COM OR�AMENTO COM INFO PEDIDA NAS OBSERVA��ES


--QUERY m
--Os trabalhos urgentes que foram mais caros do que todos os trabalhos n�o urgentes.
--CRIAR TRABALHOS URGENTES CAROS

--QUERY n
--A loja que teve menos valor faturado no �ltimo m�s.
SELECT * FROM LOJAS
SELECT * FROM ORDEM_TRABALHOS
SELECT * FROM LISTA_ARRANJOS
SELECT * FROM ARRANJOS
SELECT * FROM ORCAMENTOS


SELECT * FROM ORDEM_TRABALHOS

SELECT * FROM ZONAS
SELECT * FROM LOJAS


SELECT id_ordem_trabalho AS ID_OT, nome_zona AS Zona_Loja, ORDEM_TRABALHOS.id_loja, nome_cliente, apelido_cliente, nome_empregado FROM ORDEM_TRABALHOS
INNER JOIN LOJAS ON LOJAS.id_loja = ORDEM_TRABALHOS.id_loja
INNER JOIN ZONAS ON ZONAS.id_zona = LOJAS.id_zona_loja
INNER JOIN CLIENTES ON Clientes.id_cliente = ORDEM_TRABALHOS.id_cliente
INNER JOIN EMPREGADOS ON EMPREGADOS.id_empregado = ORDEM_TRABALHOS.id_empregado
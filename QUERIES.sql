USE RETROSKILL

--QUERY a
--Todas as lojas da zona de Lisboa
SELECT * FROM LOJAS
INNER JOIN ZONAS ON ZONAS.id_zona = LOJAS.id_zona_loja
WHERE ZONAS.nome_zona = 'Lisboa'

--QUERY b
--Informação sobre os trabalhos não concluídos, por ordem crescente de data de início
-- FALTA CRIAR OT QUE NÃO TENHAM SIDO CONCLUÍDOS
SELECT * FROM ORDEM_TRABALHOS
WHERE data_conclusao_trabalho IS NULL
ORDER BY data_ordem_trabalho DESC

--QUERY c
--Os trabalhos urgentes aceites, solicitados pelo cliente

--QUERY d
--O arranjo mais caro (VOU COLOCAR O ARRANJO MAIS CARO QUE FOI EFECTUADO)

--QUERY e
--O custo do arranjo das peças, por tipo de arranjo
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
--A loja que tem mais pedidos entregues
SELECT TOP 1 id_loja, COUNT(data_conclusao_trabalho) FROM ORDEM_TRABALHOS
GROUP BY id_loja

--QUERY h
--A quantidade de peças arranjadas da loja 1, dos últimos 7 dias
--FALTA CRIAR OT PARA OS ÚLTIMOS 7 DIAS

--QUERY i
--Os trabalhos que incluem arranjos de camisas e que ainda não foram levantados
-- CRIAR OT COM OS REQUISITOS PEDIDOS

--QUERY j
--Os trabalhos que não foram pagos e foram devolvidos
--CRIAR OT COM ORÇAMENTO VALIDADO MAS NÃO PAGO

--QUERY k
--Os pedidos urgentes que incluem peças com pelo menos 2 cores diferentes
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
--Os trabalhos não devolvidos com a indicação nas observações de que são peças sensíveis
--CRIAR OT COM ORÇAMENTO COM INFO PEDIDA NAS OBSERVAÇÕES


--QUERY m
--Os trabalhos urgentes que foram mais caros do que todos os trabalhos não urgentes.
--CRIAR TRABALHOS URGENTES CAROS

--QUERY n
--A loja que teve menos valor faturado no último mês.
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
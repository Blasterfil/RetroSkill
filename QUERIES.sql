USE RETROSKILL

--QUERY a
--Todas as lojas da zona de Lisboa
-- *CONCLUÍDO*
SELECT id_loja AS Loja, nome_zona AS Zona , morada_loja AS Morada, nif_loja AS NIF, telefone_loja AS Telefone, email_loja AS Loja FROM LOJAS
INNER JOIN ZONAS ON ZONAS.id_zona = LOJAS.id_zona_loja
WHERE ZONAS.nome_zona = 'Lisboa'

--QUERY b
--Informação sobre os trabalhos não concluídos, por ordem crescente de data de início
-- *CONCLUÍDO*
SELECT id_ordem_trabalho AS Ordem_Trabalho, ORDEM_TRABALHOS.id_loja AS Loja, nome_zona AS Zona,
(nome_cliente + ' ' + apelido_cliente) Nome_Cliente, (nome_empregado + ' ' + apelido_empregado) AS Nome_Empregado,
data_ordem_trabalho AS data_inicio, trabalho_urgente, observacoes, data_conclusao_trabalho AS Trabalho_Nao_Concluido FROM ORDEM_TRABALHOS
INNER JOIN LOJAS ON LOJAS.id_loja = ORDEM_TRABALHOS.id_loja
INNER JOIN ZONAS ON ZONAS.id_zona = LOJAS.id_zona_loja
INNER JOIN CLIENTES ON CLIENTES.id_cliente = ORDEM_TRABALHOS.id_cliente
INNER JOIN EMPREGADOS ON EMPREGADOS.id_empregado = ORDEM_TRABALHOS.id_empregado
WHERE data_conclusao_trabalho IS NULL
ORDER BY data_ordem_trabalho ASC

--QUERY c
--Os trabalhos urgentes aceites, solicitados pelo cliente
-- *CONCLUÍDO*
SELECT id_ordem_trabalho AS Ordem_Trabalho, id_loja AS Loja, (nome_cliente + ' ' + apelido_cliente) AS Nome_Cliente, data_ordem_trabalho AS Inicio, trabalho_urgente AS Urgente, data_conclusao_trabalho As Concluido FROM ORDEM_TRABALHOS
INNER JOIN CLIENTES ON CLIENTES.id_cliente = ORDEM_TRABALHOS.id_cliente
WHERE trabalho_urgente = 1

--QUERY d
--O arranjo mais caro (Na Tabela de ARRANJOS)
-- *CONCLUÍDO*
SELECT TOP 1 * FROM ARRANJOS
ORDER BY preco_arranjo DESC
--O arranjo mais caro (Se for o arranjo efectuado que teve o maior custo. O arranjo custa 31.75 que fica a 63.50 por causa da tx de urgência (100%))
-- *CONCLUÍDO*
SELECT TOP 1 (ARRANJOS.preco_arranjo * LISTA_ARRANJOS.quantidade_arranjo) * (ORDEM_TRABALHOS.trabalho_urgente + 1) AS Custo_Total, LISTA_ARRANJOS.id_arranjo FROM ORDEM_TRABALHOS
INNER JOIN LISTA_ARRANJOS ON LISTA_ARRANJOS.id_ordem_trabalho = ORDEM_TRABALHOS.id_ordem_trabalho
INNER JOIN ARRANJOS ON ARRANJOS.id_arranjo = LISTA_ARRANJOS.id_arranjo
ORDER BY Custo_Total DESC
--O arranjo mais caro (Se for o arranjo efectuado que teve o maior custo no Total de todos os arranjos incluíndo os especiais)
-- *CONCLUÍDO*
SELECT 
	CASE
	WHEN TOTAL_LISTA >= TOTAL_ORCAMENTO THEN TOTAL_LISTA
	ELSE TOTAL_ORCAMENTO
	END AS Arranjo_Mais_Caro, id_orcamento
FROM
(SELECT TOP 1 (ARRANJOS.preco_arranjo * LISTA_ARRANJOS.quantidade_arranjo) AS TOTAL_LISTA FROM ORDEM_TRABALHOS
INNER JOIN LISTA_ARRANJOS ON LISTA_ARRANJOS.id_ordem_trabalho = ORDEM_TRABALHOS.id_ordem_trabalho
INNER JOIN ARRANJOS ON ARRANJOS.id_arranjo = LISTA_ARRANJOS.id_arranjo
ORDER BY TOTAL_LISTA) AS ListaArranjos,
(SELECT TOP 1 (ORCAMENTOS.quantidade_arranjo * ORCAMENTOS.preco_arranjo) AS TOTAL_ORCAMENTO, id_orcamento FROM ORCAMENTOS
ORDER BY TOTAL_ORCAMENTO DESC) AS Orcamento

--QUERY e
--O custo do arranjo das peças, por tipo de arranjo
-- *CONCLUÍDO*
SELECT nome_arranjo AS Arranjo, nome_peca AS Peca, preco_arranjo AS Preco FROM ARRANJOS
INNER JOIN PECAS ON PECAS.id_peca = ARRANJOS.id_peca
ORDER BY preco_arranjo DESC

--QUERY f
--O tipo de arranjo que nunca foi pedido
-- *CONCLUÍDO*
SELECT id_arranjo, nome_peca, nome_arranjo, descricao_arranjo, preco_arranjo FROM ARRANJOS
INNER JOIN PECAS ON PECAS.id_peca = ARRANJOS.id_peca
WHERE NOT EXISTS (
    SELECT 1
    FROM LISTA_ARRANJOS
    WHERE LISTA_ARRANJOS.id_arranjo = ARRANJOS.id_arranjo
)

--QUERY g
--A loja que tem mais pedidos entregues
-- *CONCLUÍDO*
SELECT TOP 1 id_loja, COUNT(data_conclusao_trabalho) AS Trabalhos_Entregues FROM ORDEM_TRABALHOS
GROUP BY id_loja

--QUERY h
--A quantidade de peças arranjadas da loja 1, dos últimos 7 dias
-- *CONCLUÍDO*
SELECT COUNT(quantidade_arranjo) AS Quantidade_Arranjos, LOJAS.id_loja FROM LISTA_ARRANJOS
INNER JOIN ORDEM_TRABALHOS ON ORDEM_TRABALHOS.id_ordem_trabalho = LISTA_ARRANJOS.id_ordem_trabalho
INNER JOIN LOJAS ON LOJAS.id_loja = ORDEM_TRABALHOS.id_loja
WHERE LOJAS.id_loja = 1 AND ORDEM_TRABALHOS.data_conclusao_trabalho <= GETDATE() AND ORDEM_TRABALHOS.data_conclusao_trabalho >= DATEADD(DAY, -7, CAST(GETDATE() AS date))
GROUP BY LOJAS.id_loja

--QUERY i
--Os trabalhos que incluem arranjos de camisas e que ainda não foram levantados - 
-- *CONCLUÍDO*
SELECT ORDEM_TRABALHOS.id_ordem_trabalho, LISTA_ARRANJOS.id_arranjo, nome_arranjo, nome_peca, data_levantamento_cliente FROM ORDEM_TRABALHOS
INNER JOIN LISTA_ARRANJOS ON LISTA_ARRANJOS.id_ordem_trabalho = ORDEM_TRABALHOS.id_ordem_trabalho
INNER JOIN ARRANJOS ON ARRANJOS.id_arranjo = LISTA_ARRANJOS.id_arranjo
INNER JOIN PECAS ON PECAS.id_peca = ARRANJOS.id_peca
WHERE ORDEM_TRABALHOS.data_levantamento_cliente IS NULL AND PECAS.id_peca = 1

--QUERY j
--Os trabalhos que não foram pagos e foram devolvidos
-- *CONCLUÍDO*
SELECT * FROM DEVOLUCOES
WHERE id_recibo IS NULL

--QUERY k
--Os pedidos urgentes que incluem peças com pelo menos 2 cores diferentes
-- *CONCLUÍDO*
SELECT ORDEM_TRABALHOS.id_ordem_trabalho AS ID_OT, trabalho_urgente FROM ORDEM_TRABALHOS
INNER JOIN LISTA_ARRANJOS ON LISTA_ARRANJOS.id_ordem_trabalho = ORDEM_TRABALHOS.id_ordem_trabalho
INNER JOIN ARRANJOS ON ARRANJOS.id_arranjo = LISTA_ARRANJOS.id_arranjo
INNER JOIN PECAS ON PECAS.id_peca = ARRANJOS.id_peca
INNER JOIN CORES ON CORES.id_cor = LISTA_ARRANJOS.id_cor
WHERE trabalho_urgente = 1
GROUP BY ORDEM_TRABALHOS.id_ordem_trabalho, trabalho_urgente
HAVING COUNT(DISTINCT LISTA_ARRANJOS.id_cor) >= 2

--QUERY l
--Os trabalhos não devolvidos com a indicação nas observações de que são peças sensíveis
-- *CONCLUÍDO*
SELECT ORDEM_TRABALHOS.id_ordem_trabalho AS ID_OT, data_ordem_trabalho, data_conclusao_trabalho, data_devolucao, observacoes  FROM ORDEM_TRABALHOS
LEFT JOIN DEVOLUCOES ON DEVOLUCOES.id_ordem_trabalho = ORDEM_TRABALHOS.id_ordem_trabalho
WHERE observacoes LIKE '%peças sensíveis%'

--QUERY m
--Os trabalhos urgentes que foram mais caros do que todos os trabalhos não urgentes.
-- *CONCLUÍDO*
SELECT LISTA_ARRANJOS.id_ordem_trabalho, SUM((ARRANJOS.preco_arranjo * LISTA_ARRANJOS.quantidade_arranjo) * (ORDEM_TRABALHOS.trabalho_urgente + 1)) AS TOTAL FROM LISTA_ARRANJOS
INNER JOIN ORDEM_TRABALHOS ON ORDEM_TRABALHOS.id_ordem_trabalho = LISTA_ARRANJOS.id_ordem_trabalho
INNER JOIN ARRANJOS ON ARRANJOS.id_arranjo = LISTA_ARRANJOS.id_arranjo
GROUP BY LISTA_ARRANJOS.id_ordem_trabalho, ORDEM_TRABALHOS.trabalho_urgente
HAVING
ORDEM_TRABALHOS.trabalho_urgente = 1 AND SUM((ARRANJOS.preco_arranjo * LISTA_ARRANJOS.quantidade_arranjo) * (ORDEM_TRABALHOS.trabalho_urgente + 1)) > ALL
(
SELECT SUM((ARRANJOS.preco_arranjo * LISTA_ARRANJOS.quantidade_arranjo) * (ORDEM_TRABALHOS.trabalho_urgente + 1)) AS TOTAL FROM LISTA_ARRANJOS
INNER JOIN ORDEM_TRABALHOS ON ORDEM_TRABALHOS.id_ordem_trabalho = LISTA_ARRANJOS.id_ordem_trabalho
INNER JOIN ARRANJOS ON ARRANJOS.id_arranjo = LISTA_ARRANJOS.id_arranjo
WHERE ORDEM_TRABALHOS.trabalho_urgente = 0
GROUP BY LISTA_ARRANJOS.id_ordem_trabalho
)

--QUERY n
--A loja que teve menos valor faturado no último mês.
-- *CONCLUÍDO*
SELECT ORDEM_TRABALHOS.id_loja, SUM((ARRANJOS.preco_arranjo * LISTA_ARRANJOS.quantidade_arranjo) * (ORDEM_TRABALHOS.trabalho_urgente + 1)) AS TOTAL FROM ORDEM_TRABALHOS
INNER JOIN LOJAS ON ORDEM_TRABALHOS.id_loja = LOJAS.id_loja
INNER JOIN LISTA_ARRANJOS ON LISTA_ARRANJOS.id_ordem_trabalho = ORDEM_TRABALHOS.id_ordem_trabalho
INNER JOIN ARRANJOS ON ARRANJOS.id_arranjo = LISTA_ARRANJOS.id_arranjo
WHERE ORDEM_TRABALHOS.data_ordem_trabalho >= DATEADD(DAY, -30, GETDATE())
GROUP BY ORDEM_TRABALHOS.id_loja
HAVING SUM((ARRANJOS.preco_arranjo * LISTA_ARRANJOS.quantidade_arranjo) * (ORDEM_TRABALHOS.trabalho_urgente + 1)) =
(
SELECT MIN(LOJA_MENOS_VENDE.TOTAL) FROM
(
SELECT SUM((A2.preco_arranjo * LA2.quantidade_arranjo) * (OT2.trabalho_urgente + 1)) AS TOTAL FROM ORDEM_TRABALHOS OT2
INNER JOIN LOJAS L2 ON OT2.id_loja = L2.id_loja
INNER JOIN LISTA_ARRANJOS LA2 ON LA2.id_ordem_trabalho = OT2.id_ordem_trabalho
INNER JOIN ARRANJOS A2 ON A2.id_arranjo = LA2.id_arranjo
WHERE OT2.data_ordem_trabalho >= DATEADD(DAY, -30, GETDATE())
GROUP BY OT2.id_loja
) LOJA_MENOS_VENDE
)
ORDER BY TOTAL ASC;
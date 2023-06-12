USE RETROSKILL

DROP TABLE ZONAS
DROP TABLE LOJAS
DROP TABLE TITULOS_EMPREGADOS
DROP TABLE EMPREGADOS
DROP TABLE PECAS
DROP TABLE MATERIAIS
DROP TABLE TAMANHOS
DROP TABLE CORES
DROP TABLE FORNECEDORES
DROP TABLE ARTIGOS
DROP TABLE CLIENTES
DROP TABLE ENCOMENDAS
DROP TABLE LISTA_ARTIGOS
DROP TABLE ARRANJOS
DROP TABLE ORDEM_TRABALHOS
DROP TABLE LISTA_ARRANJOS
DROP TABLE ORCAMENTOS
DROP TABLE RECIBOS
DROP TABLE REEMBOLSOS

CREATE TABLE ZONAS
(
id_zona int primary key identity (1,1),
nome_zona varchar(50) not null,
)

CREATE TABLE LOJAS
(
id_loja int primary key identity (1,1),
id_zona_loja int,
morada_loja varchar (max),
nif_loja varchar (9) not null,
telefone_loja varchar (9) not null,
email_loja varchar (50) not null,
FOREIGN KEY (id_zona_loja) REFERENCES ZONAS(id_zona),
)

CREATE TABLE TITULOS_EMPREGADOS
(
id_titulo_empregado int primary key identity (1,1),
titulo_empregado varchar (20) not null,
)

CREATE TABLE EMPREGADOS
(
id_empregado int primary key identity (1,1),
nome_empregado varchar (50) not null,
apelido_empregado varchar (50) not null,
cc_empregado varchar (14) not null,
nif_empregado varchar (9) not null,
ss_empregado varchar (11) not null,
inicio_actividade_empregado date not null,
fim_actividade_empregado date,
id_titulo_empregado int not null,
id_loja_empregado int not null,
telefone_empregado varchar (9),
email_empregado varchar (max),
FOREIGN KEY (id_titulo_empregado) REFERENCES TITULOS_EMPREGADOS(id_titulo_empregado),
FOREIGN KEY (id_loja_empregado) REFERENCES LOJAS(id_loja),
)

CREATE TABLE PECAS
(
id_peca int primary key identity (1,1),
nome_peca varchar(20) not null,
)

CREATE TABLE MATERIAIS
(
id_material int primary key identity (1,1),
nome_material varchar (20) not null,
)

CREATE TABLE TAMANHOS
(
id_tamanho int primary key identity (1,1),
nome_tamanho varchar (5) not null,
)

CREATE TABLE CORES
(
id_cor int primary key identity (1,1),
nome_cor varchar (10) not null,
)

CREATE TABLE FORNECEDORES
(
id_fornecedor int primary key identity (1,1),
nome_fornecedor varchar (50) not null,
nome_contacto_fornecedor varchar (50) not null,
nif_fornecedor varchar (9) not null,
morada_fornecedor varchar (max) not null,
telefone_fornecedor varchar (9) not null,
email_fornecedor varchar (50) not null,
)

CREATE TABLE ARTIGOS
(
id_artigo int primary key identity (1,1),
nome_artigo varchar (50) not null,
descricao_artigo varchar(max) not null,
quantidade_minima_artigo int not null,
preco_artigo money not null,
id_fornecedor int not null,
FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDORES(id_fornecedor),
)

CREATE TABLE CLIENTES
(
id_cliente int primary key identity (1,1),
nome_cliente varchar (50) not null,
apelido_cliente varchar (50) not null,
nif_cliente varchar (9) not null,
telefone_cliente varchar (9),
email_cliente varchar (max),
)

CREATE TABLE ENCOMENDAS
(
id_encomenda int primary key identity (1,1),
id_loja int not null,
id_fornecedor int not null,
data_encomenda date not null,
data_entrega date,
FOREIGN KEY (id_loja) REFERENCES LOJAS(id_loja),
FOREIGN KEY (id_fornecedor) REFERENCES FORNECEDORES(id_fornecedor),
)

CREATE TABLE LISTA_ARTIGOS
(
id_encomenda int not null,
id_artigo int not null,
quantidade_artigo int not null,
CONSTRAINT PK_LISTA_ARTIGOS PRIMARY KEY CLUSTERED (id_encomenda, id_artigo),
FOREIGN KEY (id_encomenda) REFERENCES ENCOMENDAS(id_encomenda),
FOREIGN KEY (id_artigo) REFERENCES ARTIGOS(id_artigo),
)

CREATE TABLE ARRANJOS
(
id_arranjo int primary key identity (1,1),
id_peca int not null,
nome_arranjo varchar (50) not null,
descricao_arranjo varchar (max) not null,
preco_arranjo money not null,
FOREIGN KEY (id_peca) REFERENCES PECAS(id_peca),
)

CREATE TABLE ORDEM_TRABALHOS
(
id_ordem_trabalho int primary key identity (1,1),
id_loja int not null,
id_cliente int not null,
id_empregado int not null,
data_ordem_trabalho date not null,
trabalho_urgente bit not null,
data_conclusao_trabalho date,
observacoes varchar (max),
FOREIGN KEY (id_loja) REFERENCES LOJAS(id_loja),
FOREIGN KEY (id_cliente) REFERENCES CLIENTES(id_cliente),
FOREIGN KEY (id_empregado) REFERENCES EMPREGADOS(id_empregado),
)

CREATE TABLE LISTA_ARRANJOS
(
id_ordem_trabalho int not null,
id_arranjo int not null,
id_material int not null,
id_cor int not null,
id_tamanho int not null,
quantidade_arranjo int not null,
CONSTRAINT PK_LISTA_ARRANJOS PRIMARY KEY CLUSTERED (id_ordem_trabalho, id_arranjo, id_material, id_cor, id_tamanho),
FOREIGN KEY (id_ordem_trabalho) REFERENCES ORDEM_TRABALHOS(id_ordem_trabalho),
FOREIGN KEY (id_arranjo) REFERENCES ARRANJOS(id_arranjo),
FOREIGN KEY (id_material) REFERENCES MATERIAIS(id_material),
FOREIGN KEY (id_cor) REFERENCES CORES(id_cor),
FOREIGN KEY (id_tamanho) REFERENCES TAMANHOS(id_tamanho),
)

CREATE TABLE ORCAMENTOS
(
id_orcamento int primary key identity (1,1),
id_ordem_trabalho int not null,
descricao_arranjo varchar(max) not null,
id_peca int not null,
id_material int not null,
id_cor int not null,
id_tamanho int not null,
quantidade_arranjo int not null,
preco_arranjo money not null,
data_envio_cliente date,
data_recusa_cliente date,
data_validacao_cliente date,
FOREIGN KEY (id_ordem_trabalho) REFERENCES ORDEM_TRABALHOS(id_ordem_trabalho),
FOREIGN KEY (id_peca) REFERENCES PECAS(id_peca),
FOREIGN KEY (id_material) REFERENCES MATERIAIS(id_material),
FOREIGN KEY (id_cor) REFERENCES CORES(id_cor),
FOREIGN KEY (id_tamanho) REFERENCES TAMANHOS(id_tamanho),
)

CREATE TABLE RECIBOS
(
id_recibo int primary key identity (1,1),
id_ordem_trabalho int not null,
preco_total money,
data_emissao date not null,
FOREIGN KEY (id_ordem_trabalho) REFERENCES ORDEM_TRABALHOS(id_ordem_trabalho),
)

CREATE TABLE REEMBOLSOS
(
id_reembolso int primary key identity (1,1),
id_recibo int not null,
data_reembolso date not null,
razao_reembolso varchar (max) not null,
FOREIGN KEY (id_recibo) REFERENCES RECIBOS(id_recibo),
)
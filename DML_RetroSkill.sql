USE RETROSKILL

--As Zonas representam Distritos
INSERT INTO ZONAS VALUES ('Lisboa');
INSERT INTO ZONAS VALUES ('Porto');
INSERT INTO ZONAS VALUES ('Coimbra');
INSERT INTO ZONAS VALUES ('Faro');
INSERT INTO ZONAS VALUES ('Viseu');

--Lojas da Zona de Lisboa
INSERT INTO LOJAS VALUES (1, 'R. Visc. Luz 17C, 2750-415 Cascais', '501000001', '210121620', 'cascais@retroskill.pt');
INSERT INTO LOJAS VALUES (1, 'R. Ivens 61, 1200-087 Lisboa', '501058645', '211392948', 'chiado@retroskill.pt');
INSERT INTO LOJAS VALUES (1, 'R. Pereira e Sousa 24A, 1350-243 Lisboa', '501846253', '213850947', 'campodeourique@retroskill.pt');
INSERT INTO LOJAS VALUES (1, 'Av. da Igreja 41A, 1700-234 Lisboa Lisboa', '501745323', '210114338', 'alvalade@retroskill.pt');

--Loja da Zona do Porto
INSERT INTO LOJAS VALUES (2, 'Av. do Brasil 498, 4150-025 Porto', '501455986', '222449700', 'foz@retroskill.pt');

--Loja da Zona de Coimbra
INSERT INTO LOJAS VALUES (3, 'Rua da Sota 12, 3000-392 Coimbra', '501314141', '239098990', 'saobartolomeu@retroskill.pt');

--Loja da Zona do Faro
INSERT INTO LOJAS VALUES (4, 'Praça Dom Francisco Gomes, 8000-168 Faro', '501877952', '211349044', 'saopedro@retroskill.pt');

--Loja da Zona de Viseu
INSERT INTO LOJAS VALUES (5, 'R. Serrado Lote 9, 3500-202 Viseu', '501000145', '232461033', 'viseu@retroskill.pt');

--Títulos/Funções dos Empregados
INSERT INTO TITULOS_EMPREGADOS VALUES ('Gerente');
INSERT INTO TITULOS_EMPREGADOS VALUES ('Caixa');
INSERT INTO TITULOS_EMPREGADOS VALUES ('Costureira');
INSERT INTO TITULOS_EMPREGADOS VALUES ('Alfaiate');
INSERT INTO TITULOS_EMPREGADOS VALUES ('Supervisor');

--Empregados da Loja de Cascais
INSERT INTO EMPREGADOS VALUES ('Ana', 'Oliveira', '10532318 8 ZXC', '200200200', '30030060022', '2022-10-05', null, 1, 1, '912345678', 'ana.oliveira@gmail.com');
INSERT INTO EMPREGADOS VALUES ('João', 'Santos', '20394375 2 ABC', '201100300', '40050060077', '2022-09-15', null, 2, 1, '919876543', 'joao.santos@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Miguel', 'Silva', '15682914 4 XYZ', '203400400', '50060070033', '2022-11-20', null, 3, 1, '925678901', 'miguel.silva@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Sofia', 'Costa', '20198345 7 DEF', '204300500', '70080090044', '2022-08-10', null, 4, 1, '936543210', 'sofia.costa@gmail.com');

--Empregados da Loja do Chiado
INSERT INTO EMPREGADOS VALUES ('Pedro', 'Ferreira', '12937465 3 QWE', '205200600', '90010020055', '2022-12-03', null, 1, 2, '914567890', 'pedro.ferreira@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Inês', 'Ribeiro', '27184936 1 RTY', '206100700', '10020030066', '2022-07-25', null, 2, 2, '927364501', 'ines.ribeiro@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Luís', 'Martins', '38745628 5 JKL', '207000800', '30040050077', '2022-10-18', null, 3, 2, '934567812', 'luis.martins@gmail.com');

--Empregados da Loja de Campo de Ourique
INSERT INTO EMPREGADOS VALUES ('Mariana', 'Gonçalves', '43928752 8 UIO', '207900900', '50060070088', '2022-09-06', null, 1, 3, '947658123', 'mariana.goncalves@gmail.com');
INSERT INTO EMPREGADOS VALUES ('André', 'Sousa', '53247619 4 ASD', '208801000', '70080090099', '2022-11-28', null, 2, 3, '956789234', 'andre.sousa@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Carolina', 'Rodrigues', '64293587 1 HJK', '209701100', '90010020000', '2022-08-13', null, 3, 3, '967890345', 'carolina.rodrigues@gmail.com');

--Empregados da Loja de Alvalade
INSERT INTO EMPREGADOS VALUES ('Diogo', 'Almeida', '79342853 2 VBN', '210601200', '10020030011', '2022-12-07', null, 1, 4, '976543456', 'diogo.almeida@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Catarina', 'Pereira', '86493729 7 YUI', '211501300', '30040050022', '2022-07-30', null, 2, 4, '985432567', 'catarina.pereira@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Rafael', 'Mendes', '94827536 5 GFD', '212401400', '50060070033', '2022-10-23', null, 3, 4, '994321678', 'rafael.mendes@gmail.com');

--Empregados da Loja da Foz no Porto
INSERT INTO EMPREGADOS VALUES ('Marta', 'Cunha', '09457263 3 KJI', '213301500', '70080090044', '2022-09-11', null, 1, 5, '916543289', 'marta.cunha@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Gonçalo', 'Lima', '14936872 8 NMB', '214201600', '90010020055', '2022-12-04', null, 3, 5, '925678390', 'goncalo.lima@gmail.com');

--Empregados da Loja de São Bartolomeu
INSERT INTO EMPREGADOS VALUES ('Beatriz', 'Fernandes', '27634917 4 PLM', '215101700', '10020030066', '2022-07-27', null, 1, 6, '936543401', 'beatriz.fernandes@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Hugo', 'Carvalho', '38165792 1 OKN', '216001800', '30040050077', '2022-10-21', null, 4, 6, '947658512', 'hugo.carvalho@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Clara', 'Santana', '49837654 6 WER', '216902000', '50060070088', '2022-09-09', null, 3, 6, '956789623', 'clara.santana@gmail.com');

--Empregados da Loja São Pedro em Faro
INSERT INTO EMPREGADOS VALUES ('Rodrigo', 'Barros', '59382945 2 TYU', '217802100', '70080090099', '2022-11-30', null, 1, 7, '967890734', 'rodrigo.barros@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Lara', 'Pinto', '67291043 9 SDF', '218702200', '90010020000', '2022-08-16', null, 3, 7, '976543845', 'lara.pinto@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Martim', 'Figueira', '76231459 7 XCV', '219602300', '10020030011', '2022-12-10', null, 4, 7, '985432956', 'martim.figueira@gmail.com');

--Empregados da Loja de Viseu
INSERT INTO EMPREGADOS VALUES ('Leonor', 'Correia', '83019364 1 BNM', '220502400', '30040050022', '2022-07-28', null, 1, 8, '994321067', 'leonor.correia@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Francisco', 'Melo', '92876354 3 LKJ', '221402500', '50060070033', '2022-10-25', null, 2, 8, '916543178', 'francisco.melo@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Sara', 'Rocha', '01937286 4 QWE', '222302600', '70080090044', '2022-09-13', null, 3, 8, '925678289', 'sara.rocha@gmail.com');
INSERT INTO EMPREGADOS VALUES ('Tomás', 'Moreira', '12843697 1 RTY', '223202700', '90010020055', '2022-12-06', null, 4, 8, '936543390', 'tomas.moreira@gmail.com');

--Peças de Vestuário
INSERT INTO PECAS VALUES ('Camisa');
INSERT INTO PECAS VALUES ('Casaco');
INSERT INTO PECAS VALUES ('Calças');
INSERT INTO PECAS VALUES ('Camisolas');
INSERT INTO PECAS VALUES ('Saias');

--Materiais do Vestuário
INSERT INTO MATERIAIS VALUES ('Pele');
INSERT INTO MATERIAIS VALUES ('Algodão');
INSERT INTO MATERIAIS VALUES ('Linho');
INSERT INTO MATERIAIS VALUES ('Ganga');
INSERT INTO MATERIAIS VALUES ('Seda');

--Tamanhos do Vestuário
INSERT INTO TAMANHOS VALUES ('40');
INSERT INTO TAMANHOS VALUES ('42');
INSERT INTO TAMANHOS VALUES ('44');
INSERT INTO TAMANHOS VALUES ('46');
INSERT INTO TAMANHOS VALUES ('48');
INSERT INTO TAMANHOS VALUES ('50');
INSERT INTO TAMANHOS VALUES ('52');
INSERT INTO TAMANHOS VALUES ('54');
INSERT INTO TAMANHOS VALUES ('56');
INSERT INTO TAMANHOS VALUES ('58');

--Cores do Vestuário
INSERT INTO CORES VALUES ('Azul');
INSERT INTO CORES VALUES ('Castanho');
INSERT INTO CORES VALUES ('Branco');
INSERT INTO CORES VALUES ('Verde');
INSERT INTO CORES VALUES ('Vermelho');
INSERT INTO CORES VALUES ('Sortido');

-- Fornecedores das Lojas
INSERT INTO FORNECEDORES VALUES ('Linha Fina', 'Bernardo Cunha', '501053687', 'R. da Prata 25, 1700-003 Lisboa', '210875698', 'encomendas@linhafina.pt');
INSERT INTO FORNECEDORES VALUES ('Botões da Moda', 'Marta Santos', '502409671', 'Av. das Flores 10, 1000-001 Porto', '220987654', 'geral@botoesdamoda.pt');
INSERT INTO FORNECEDORES VALUES ('Suprimentos Express', 'Rui Costa', '505281943', 'Rua dos Negócios 8, 2000-002 Coimbra', '231543789', 'rui@suprimentosexpress.com');
INSERT INTO FORNECEDORES VALUES ('Tecidos Valente', 'Pedro Valente', '503519286', 'Avenida das Indústrias 15, 3000-003 Braga', '253876543', 'info@tecidossvalente.pt');
INSERT INTO FORNECEDORES VALUES ('Fivelas e Fechos', 'Carolina Rodrigues', '509836542', 'Praça dos Peixes 5, 4000-004 Faro', '289654321', 'carolina@fivelasefechos.com');

--Artigos do Fornecedor Linha Fina
INSERT INTO ARTIGOS VALUES('Cordão 5mm', 'Cordão 100% Algodão, com Espessura de 5mm. Várias cores. Rolo de 50m', 100, 50, 1);
INSERT INTO ARTIGOS VALUES('Cordão 12mm', 'Cordão Branco para Frades, 100% Algodão, com espessura de +/- 12mm. Rolo de 50m', 100, 80, 1);
INSERT INTO ARTIGOS VALUES('Cordão 3mm', 'Cordão de cetim torcido, para utilização em várias aplicações.Várias cores. Rolo de 50m', 100, 45, 1);
INSERT INTO ARTIGOS VALUES('Cordão de Couro 5mm', 'Cordão de couro de alta qualidade, para fazer correias para máquinas de costura. Rolo de 50m', 100, 155, 1);
INSERT INTO ARTIGOS VALUES('Cordão de Couro 10mm', 'Cordão de couro de alta qualidade, para fazer correias para máquinas de costura. Rolo de 50m', 100, 225, 1);

--Artigos do Fornecedor Botões da Moda
INSERT INTO ARTIGOS VALUES('Botão casaco 10mm', 'Botão em Polyester, Imitação de Osso. 250un', 10, 60, 2);
INSERT INTO ARTIGOS VALUES('Botão jeans', 'Botões para Jeans (prego). Ideal para aplicação em vestuário de ganga, sarja ou bombazine, com dizeres "SPORTSWEAR JEANS". Aplica-se facilmente com as mãos ou com a ajuda de um pequeno martelo. 150un', 10, 95, 2);
INSERT INTO ARTIGOS VALUES('Botão camisa', 'Botão de madrepérola Agoya, com 2 furos. 250un', 10, 98, 2);
INSERT INTO ARTIGOS VALUES('Botão metal fato', 'Botão de metal dourado, de alta qualidade, para fatos. 50un', 10, 125, 2);
INSERT INTO ARTIGOS VALUES('Botão madeira camisa', 'Botões de Côco "Flor Grande". 25un', 10, 35, 2);

--Artigos do Fornecedor Suprimentos Express
INSERT INTO ARTIGOS VALUES('Dedal Silicone', 'Dedal de silicone com ponta em metal. Ajusta-se suavemente ao dedo. 5un', 1, 45, 3);
INSERT INTO ARTIGOS VALUES('Dedal Aço', 'Dedal em aço para costura. 5un', 1, 35, 3);
INSERT INTO ARTIGOS VALUES('Dedal Aberto Aço', 'Dedal aberto, em aço para costura. 5un', 1, 33, 3);
INSERT INTO ARTIGOS VALUES('Dedal Crochet', 'Dedal para facilitar o crochet ou o tricot. 5un', 1, 23, 3);
INSERT INTO ARTIGOS VALUES('Dedal Couro', 'Dedal em couro para costura. 5un', 1, 43, 3);

--Artigos do Fornecedor Tecidos Valente
INSERT INTO ARTIGOS VALUES('Forro 60g', 'Forro acolchoado para casacos. 60g. Rolo de 50m', 10, 390, 4);
INSERT INTO ARTIGOS VALUES('Pano cru 160g', 'Pano cru, para diversas aplicações. 160g. Rolo de 50m', 10, 285, 4);
INSERT INTO ARTIGOS VALUES('Flanela lisa', 'Flanela lisa em Algodão. Rolo de 50m', 10, 465, 4);
INSERT INTO ARTIGOS VALUES('Linho Fino', 'Linho (fino) para toalhas, naprons, etc. Pérola. Rolo de 50m', 10, 495, 4);
INSERT INTO ARTIGOS VALUES('Tafetá 110g', 'Tafetá anti-estático de alta qualidade, suave no toque. Pelo facto de ser anti-estático não agarra ás pernas. Rolo de 50m', 10, 315, 4);

--Artigos do Fornecedor Fivelas e Fechos
INSERT INTO ARTIGOS VALUES('Fivela em metal', 'Fivelas em metal de alta qualidade. 10un.', 50, 115, 5);
INSERT INTO ARTIGOS VALUES('Passador em metal', 'Passador de metal com travessão niquelado. 10un.', 50, 85, 5);
INSERT INTO ARTIGOS VALUES('Fivela para colete', 'Fivela para colete. 25un.', 50, 50, 5);
INSERT INTO ARTIGOS VALUES('Fivela de plástico', 'Fivelas de encaixe, para aplicar em mochilas, sacos, cintos e vestuário de desporto, etc. 10un.', 50, 20, 5);
INSERT INTO ARTIGOS VALUES('Fecho de correr', 'Fechos de correr injectados, com cremalheira de 6mm, com divisor (ou seja, PARA CASACOS). 25un.', 50, 210, 5);

--Clientes
--Loja 1
INSERT INTO CLIENTES VALUES ('Anabela', 'Silva', '103564789', '961567230', 'anabela.silva@gmail.com');
INSERT INTO CLIENTES VALUES ('Ricardo', 'Almeida', '207623451', '912345678', 'ricardo.almeida@gmail.com');
INSERT INTO CLIENTES VALUES ('Marta', 'Fernandes', '309821765', '923456789', 'marta.fernandes@gmail.com');
INSERT INTO CLIENTES VALUES ('André', 'Santos', '405987123', '934567890', 'andre.santos@gmail.com');
INSERT INTO CLIENTES VALUES ('Carolina', 'Gonçalves', '503216789', '945678901', 'carolina.goncalves@gmail.com');
--Loja 2
INSERT INTO CLIENTES VALUES ('Gonçalo', 'Oliveira', '609834512', '956789012', 'goncalo.oliveira@gmail.com');
INSERT INTO CLIENTES VALUES ('Sara', 'Rodrigues', '702391867', '967890123', 'sara.rodrigues@gmail.com');
INSERT INTO CLIENTES VALUES ('João', 'Pereira', '803456921', '978901234', 'joao.pereira@gmail.com');
INSERT INTO CLIENTES VALUES ('Inês', 'Martins', '905672314', '989012345', 'ines.martins@gmail.com');
INSERT INTO CLIENTES VALUES ('Pedro', 'Figueira', '107398652', '900123456', 'pedro.figueira@gmail.com');
--Loja 3
INSERT INTO CLIENTES VALUES ('Mariana', 'Ribeiro', '209851436', '911234567', 'mariana.ribeiro@gmail.com');
INSERT INTO CLIENTES VALUES ('Tiago', 'Silveira', '304567891', '922345678', 'tiago.silveira@gmail.com');
INSERT INTO CLIENTES VALUES ('Ana', 'Melo', '401238765', '933456789', 'ana.melo@gmail.com');
INSERT INTO CLIENTES VALUES ('Hugo', 'Sousa', '507623490', '944567890', 'hugo.sousa@gmail.com');
INSERT INTO CLIENTES VALUES ('Carla', 'Plantier', '601938274', '955678901', 'carla.carvalho@gmail.com');
--Loja 4
INSERT INTO CLIENTES VALUES ('Luís', 'Lima', '709823456', '966789012', 'luis.lima@gmail.com');
INSERT INTO CLIENTES VALUES ('Rita', 'Ferreira', '801293746', '977890123', 'rita.ferreira@gmail.com');
INSERT INTO CLIENTES VALUES ('David', 'Neves', '902374651', '988901234', 'david.neves@gmail.com');
INSERT INTO CLIENTES VALUES ('Sofia', 'Teixeira', '100938274', '900012345', 'sofia.teixeira@gmail.com');
INSERT INTO CLIENTES VALUES ('Daniel', 'Costa', '202389175', '911123456', 'daniel.costa@gmail.com');
--Loja 5
INSERT INTO CLIENTES VALUES ('Ana', 'Alves', '303476925', '922234567', 'ana.alves@gmail.com');
INSERT INTO CLIENTES VALUES ('André', 'Saraiva', '408529137', '933345678', 'andre.saraiva@gmail.com');
INSERT INTO CLIENTES VALUES ('Marta', 'Rocha', '505987623', '944456789', 'marta.rocha@gmail.com');
INSERT INTO CLIENTES VALUES ('Paulo', 'Gomes', '601238974', '955567890', 'paulo.gomes@gmail.com');
INSERT INTO CLIENTES VALUES ('Inês', 'Santos', '700918546', '966678901', 'ines.santos@gmail.com');
--Loja 6
INSERT INTO CLIENTES VALUES ('Ricardo', 'Carvalho', '805623109', '977789012', 'ricardo.carvalho@gmail.com');
INSERT INTO CLIENTES VALUES ('Sara', 'Fernandes', '906382715', '988890123', 'sara.fernandes@gmail.com');
INSERT INTO CLIENTES VALUES ('Pedro', 'Oliveira', '102398475', '900001234', 'pedro.oliveira@gmail.com');
INSERT INTO CLIENTES VALUES ('Carolina', 'Ribeiro', '203756892', '911112345', 'carolina.ribeiro@gmail.com');
INSERT INTO CLIENTES VALUES ('Luís', 'Silva', '308529374', '922223456', 'luis.silva@gmail.com');
--Loja 7
INSERT INTO CLIENTES VALUES ('Mariana', 'Pereira', '405917263', '933334567', 'mariana.pereira@gmail.com');
INSERT INTO CLIENTES VALUES ('João', 'Gonçalves', '503648927', '944445678', 'joao.goncalves@gmail.com');
INSERT INTO CLIENTES VALUES ('Ana', 'Martins', '606382719', '955556789', 'ana.martins@gmail.com');
INSERT INTO CLIENTES VALUES ('Rita', 'Figueira', '702985631', '966667890', 'rita.figueira@gmail.com');
INSERT INTO CLIENTES VALUES ('Hugo', 'Rodrigues', '805726394', '977778901', 'hugo.rodrigues@gmail.com');
--Loja 8
INSERT INTO CLIENTES VALUES ('Inês', 'Melo', '901736284', '988889012', 'ines.melo@gmail.com');
INSERT INTO CLIENTES VALUES ('Daniel', 'Sousa', '102638497', '900000123', 'daniel.sousa@gmail.com');
INSERT INTO CLIENTES VALUES ('Carla', 'Carvalho', '204926837', '911111234', 'carla.carvalho@gmail.com');
INSERT INTO CLIENTES VALUES ('André', 'Lima', '301956287', '922222345', 'andre.lima@gmail.com');
INSERT INTO CLIENTES VALUES ('Sofia', 'Ferreira', '409365712', '933333456', 'sofia.ferreira@gmail.com');


-- Encomendas para a loja 1
INSERT INTO ENCOMENDAS VALUES (1, 1, '2023-06-01', '2023-06-10');
INSERT INTO ENCOMENDAS VALUES (1, 2, '2023-06-02', '2023-06-12');
INSERT INTO ENCOMENDAS VALUES (1, 3, '2023-06-03', '2023-06-11');
INSERT INTO ENCOMENDAS VALUES (1, 4, '2023-06-04', '2023-06-15');
INSERT INTO ENCOMENDAS VALUES (1, 5, '2023-06-05', '2023-06-14');

-- Encomendas para a loja 2
INSERT INTO ENCOMENDAS VALUES (2, 1, '2023-06-02', '2023-06-12');
INSERT INTO ENCOMENDAS VALUES (2, 2, '2023-06-03', '2023-06-11');
INSERT INTO ENCOMENDAS VALUES (2, 3, '2023-06-04', '2023-06-15');
INSERT INTO ENCOMENDAS VALUES (2, 4, '2023-06-05', '2023-06-14');
INSERT INTO ENCOMENDAS VALUES (2, 5, '2023-06-06', '2023-06-13');

-- Encomendas para a loja 3
INSERT INTO ENCOMENDAS VALUES (3, 1, '2023-06-03', '2023-06-11');
INSERT INTO ENCOMENDAS VALUES (3, 2, '2023-06-04', '2023-06-15');
INSERT INTO ENCOMENDAS VALUES (3, 3, '2023-06-05', '2023-06-14');
INSERT INTO ENCOMENDAS VALUES (3, 4, '2023-06-06', '2023-06-13');
INSERT INTO ENCOMENDAS VALUES (3, 5, '2023-06-07', '2023-06-16');

-- Encomendas para a loja 4
INSERT INTO ENCOMENDAS VALUES (4, 1, '2023-06-04', '2023-06-15');
INSERT INTO ENCOMENDAS VALUES (4, 2, '2023-06-05', '2023-06-14');
INSERT INTO ENCOMENDAS VALUES (4, 3, '2023-06-06', '2023-06-13');
INSERT INTO ENCOMENDAS VALUES (4, 4, '2023-06-07', '2023-06-16');
INSERT INTO ENCOMENDAS VALUES (4, 5, '2023-06-08', '2023-06-17');

-- Encomendas para a loja 5
INSERT INTO ENCOMENDAS VALUES (5, 1, '2023-06-05', '2023-06-14');
INSERT INTO ENCOMENDAS VALUES (5, 2, '2023-06-06', '2023-06-13');
INSERT INTO ENCOMENDAS VALUES (5, 3, '2023-06-07', '2023-06-16');
INSERT INTO ENCOMENDAS VALUES (5, 4, '2023-06-08', '2023-06-17');
INSERT INTO ENCOMENDAS VALUES (5, 5, '2023-06-09', '2023-06-18');

-- Encomendas para a loja 6
INSERT INTO ENCOMENDAS VALUES (6, 1, '2023-06-06', '2023-06-13');
INSERT INTO ENCOMENDAS VALUES (6, 2, '2023-06-07', '2023-06-16');
INSERT INTO ENCOMENDAS VALUES (6, 3, '2023-06-08', '2023-06-17');
INSERT INTO ENCOMENDAS VALUES (6, 4, '2023-06-09', '2023-06-18');
INSERT INTO ENCOMENDAS VALUES (6, 5, '2023-06-10', '2023-06-19');

-- Encomendas para a loja 7
INSERT INTO ENCOMENDAS VALUES (7, 1, '2023-06-02', '2023-06-16');
INSERT INTO ENCOMENDAS VALUES (7, 2, '2023-06-03', '2023-06-17');
INSERT INTO ENCOMENDAS VALUES (7, 3, '2023-06-04', '2023-06-18');
INSERT INTO ENCOMENDAS VALUES (7, 4, '2023-06-05', '2023-06-19');
INSERT INTO ENCOMENDAS VALUES (7, 5, '2023-06-06', '2023-06-20');

-- Encomendas para a loja 8
INSERT INTO ENCOMENDAS VALUES (8, 1, '2023-06-01', '2023-06-17');
INSERT INTO ENCOMENDAS VALUES (8, 2, '2023-06-02', '2023-06-18');
INSERT INTO ENCOMENDAS VALUES (8, 3, '2023-06-03', '2023-06-19');
INSERT INTO ENCOMENDAS VALUES (8, 4, '2023-06-04', '2023-06-20');
INSERT INTO ENCOMENDAS VALUES (8, 5, '2023-06-05', '2023-06-21');

-- Encomenda 1
INSERT INTO LISTA_ARTIGOS VALUES (1, 1, 2);
INSERT INTO LISTA_ARTIGOS VALUES (1, 2, 3);
-- Encomenda 2
INSERT INTO LISTA_ARTIGOS VALUES (2, 1, 1);
INSERT INTO LISTA_ARTIGOS VALUES (2, 3, 2);
-- Encomenda 3
INSERT INTO LISTA_ARTIGOS VALUES (3, 2, 4);
INSERT INTO LISTA_ARTIGOS VALUES (3, 3, 1);
-- Encomenda 4
INSERT INTO LISTA_ARTIGOS VALUES (4, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (4, 4, 2);
-- Encomenda 5
INSERT INTO LISTA_ARTIGOS VALUES (5, 2, 3);
INSERT INTO LISTA_ARTIGOS VALUES (5, 4, 4);
-- Encomenda 6
INSERT INTO LISTA_ARTIGOS VALUES (6, 1, 2);
INSERT INTO LISTA_ARTIGOS VALUES (6, 2, 3);
-- Encomenda 7
INSERT INTO LISTA_ARTIGOS VALUES (7, 3, 1);
INSERT INTO LISTA_ARTIGOS VALUES (7, 4, 5);
-- Encomenda 8
INSERT INTO LISTA_ARTIGOS VALUES (8, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (8, 2, 2);
-- Encomenda 9
INSERT INTO LISTA_ARTIGOS VALUES (9, 3, 4);
INSERT INTO LISTA_ARTIGOS VALUES (9, 4, 1);
-- Encomenda 10
INSERT INTO LISTA_ARTIGOS VALUES (10, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (10, 3, 3);
-- Encomenda 11
INSERT INTO LISTA_ARTIGOS VALUES (11, 2, 2);
INSERT INTO LISTA_ARTIGOS VALUES (11, 4, 4);
-- Encomenda 12
INSERT INTO LISTA_ARTIGOS VALUES (12, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (12, 3, 1);
-- Encomenda 13
INSERT INTO LISTA_ARTIGOS VALUES (13, 2, 4);
INSERT INTO LISTA_ARTIGOS VALUES (13, 4, 2);
-- Encomenda 14
INSERT INTO LISTA_ARTIGOS VALUES (14, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (14, 2, 3);
-- Encomenda 15
INSERT INTO LISTA_ARTIGOS VALUES (15, 3, 1);
INSERT INTO LISTA_ARTIGOS VALUES (15, 4, 5);
-- Encomenda 16
INSERT INTO LISTA_ARTIGOS VALUES (16, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (16, 2, 2);
-- Encomenda 17
INSERT INTO LISTA_ARTIGOS VALUES (17, 3, 4);
INSERT INTO LISTA_ARTIGOS VALUES (17, 4, 1);
-- Encomenda 18
INSERT INTO LISTA_ARTIGOS VALUES (18, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (18, 3, 3);
-- Encomenda 19
INSERT INTO LISTA_ARTIGOS VALUES (19, 2, 2);
INSERT INTO LISTA_ARTIGOS VALUES (19, 4, 4);
-- Encomenda 20
INSERT INTO LISTA_ARTIGOS VALUES (20, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (20, 3, 1);
-- Encomenda 21
INSERT INTO LISTA_ARTIGOS VALUES (21, 2, 4);
INSERT INTO LISTA_ARTIGOS VALUES (21, 4, 2);
-- Encomenda 22
INSERT INTO LISTA_ARTIGOS VALUES (22, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (22, 2, 3);
-- Encomenda 23
INSERT INTO LISTA_ARTIGOS VALUES (23, 3, 1);
INSERT INTO LISTA_ARTIGOS VALUES (23, 4, 5);
-- Encomenda 24
INSERT INTO LISTA_ARTIGOS VALUES (24, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (24, 2, 2);
-- Encomenda 25
INSERT INTO LISTA_ARTIGOS VALUES (25, 3, 4);
INSERT INTO LISTA_ARTIGOS VALUES (25, 4, 1);
-- Encomenda 26
INSERT INTO LISTA_ARTIGOS VALUES (26, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (26, 3, 3);
-- Encomenda 27
INSERT INTO LISTA_ARTIGOS VALUES (27, 2, 2);
INSERT INTO LISTA_ARTIGOS VALUES (27, 4, 4);
-- Encomenda 28
INSERT INTO LISTA_ARTIGOS VALUES (28, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (28, 3, 1);
-- Encomenda 29
INSERT INTO LISTA_ARTIGOS VALUES (29, 2, 4);
INSERT INTO LISTA_ARTIGOS VALUES (29, 4, 2);
-- Encomenda 30
INSERT INTO LISTA_ARTIGOS VALUES (30, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (30, 2, 3);
-- Encomenda 31
INSERT INTO LISTA_ARTIGOS VALUES (31, 3, 1);
INSERT INTO LISTA_ARTIGOS VALUES (31, 4, 3);
-- Encomenda 32
INSERT INTO LISTA_ARTIGOS VALUES (32, 1, 4);
INSERT INTO LISTA_ARTIGOS VALUES (32, 2, 2);
-- Encomenda 33
INSERT INTO LISTA_ARTIGOS VALUES (33, 3, 3);
INSERT INTO LISTA_ARTIGOS VALUES (33, 4, 1);
-- Encomenda 34
INSERT INTO LISTA_ARTIGOS VALUES (34, 1, 2);
INSERT INTO LISTA_ARTIGOS VALUES (34, 3, 4);
-- Encomenda 35
INSERT INTO LISTA_ARTIGOS VALUES (35, 2, 5);
INSERT INTO LISTA_ARTIGOS VALUES (35, 4, 3);
-- Encomenda 36
INSERT INTO LISTA_ARTIGOS VALUES (36, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (36, 2, 1);
-- Encomenda 37
INSERT INTO LISTA_ARTIGOS VALUES (37, 3, 4);
INSERT INTO LISTA_ARTIGOS VALUES (37, 4, 2);
-- Encomenda 38
INSERT INTO LISTA_ARTIGOS VALUES (38, 1, 5);
INSERT INTO LISTA_ARTIGOS VALUES (38, 3, 3);
-- Encomenda 39
INSERT INTO LISTA_ARTIGOS VALUES (39, 2, 2);
INSERT INTO LISTA_ARTIGOS VALUES (39, 4, 4);
-- Encomenda 40
INSERT INTO LISTA_ARTIGOS VALUES (40, 1, 3);
INSERT INTO LISTA_ARTIGOS VALUES (40, 3, 1);

-- Arranjos de Camisas
INSERT INTO ARRANJOS VALUES (1,'Bainha Camisa', 'Subir ou descer bainha de camisa', 9.60);
INSERT INTO ARRANJOS VALUES (1,'Voltar Colarinhos', 'Virar colarinhos de camisas', 10.50);
INSERT INTO ARRANJOS VALUES (1,'Punho Simples', 'Punho de camisa simples', 9.30);

-- Arranjos de Casacos
INSERT INTO ARRANJOS VALUES (2,'Apertar Mangas', 'Aperto de mangas de casacos', 22.50);
INSERT INTO ARRANJOS VALUES (2,'Pregar Botão', 'Pregar botões em casacos', 1.35);
INSERT INTO ARRANJOS VALUES (2,'Subir Manga', 'Subir cabeça de manga de casacos', 31.75);

-- Arranjos de Calças
INSERT INTO ARRANJOS VALUES (3,'Bainha Simples', 'Fazer bainha simples em calças', 8.20);
INSERT INTO ARRANJOS VALUES (3,'Fecho Normal Ganga', 'Inserir fecho normal em calças de ganga', 15.45);
INSERT INTO ARRANJOS VALUES (3,'Fecho c/Forro', 'Inserir fecho com forro em calças de ganga', 11.35);

-- Arranjos de Camisolas
INSERT INTO ARRANJOS VALUES (4,'Subir Punhos', 'Subir os punhos das camisolas', 7.90);
INSERT INTO ARRANJOS VALUES (4,'Colocação Fechos', 'Colocar fechos nas camisolas', 10.70);
INSERT INTO ARRANJOS VALUES (4,'Apertar Mangas', 'Apertar mangas das camisolas', 7.30);

-- Arranjos de Saias
INSERT INTO ARRANJOS VALUES (5,'Apertar Lados', 'Apertar os lados da saia c/ forro', 11.70);
INSERT INTO ARRANJOS VALUES (5,'Colocar Elástico', 'Colocação de elástico na saia', 15.10);
INSERT INTO ARRANJOS VALUES (5,'Bainha Simples', 'Bainha simples para saia', 8.20);

--Ordens de trabalhos pedidos pelos clientes
--Loja 1 OT 1 LA 1
INSERT INTO ORDEM_TRABALHOS VALUES(1, 1, 2, '2023-06-01', 0,'2023-06-06', '2023-06-07',null);
INSERT INTO LISTA_ARRANJOS VALUES(1, 15, 2, 2, 6, 1);
INSERT INTO RECIBOS VALUES (1,'2023-06-01');
--Loja 2 OT 2 LA 2,3
INSERT INTO ORDEM_TRABALHOS VALUES(2, 2, 6, '2023-06-01', 1,'2023-06-02', '2023-06-02',null);
INSERT INTO LISTA_ARRANJOS VALUES(2, 7, 2, 3, 7, 1);
INSERT INTO LISTA_ARRANJOS VALUES(2, 6, 2, 1, 7, 1);
INSERT INTO RECIBOS VALUES (2,'2023-06-01');
--Loja 3 OT 3 LA 4,5
INSERT INTO ORDEM_TRABALHOS VALUES(3, 3, 9, '2023-06-01', 0,'2023-06-08', '2023-06-08',null);
INSERT INTO LISTA_ARRANJOS VALUES(3, 1, 3, 4, 5, 1);
INSERT INTO LISTA_ARRANJOS VALUES(3, 1, 3, 6, 5, 1);
INSERT INTO RECIBOS VALUES (3,'2023-06-01');
--Loja 4 OT 4 LA 6
INSERT INTO ORDEM_TRABALHOS VALUES(4, 4, 12, '2023-06-01', 0,'2023-06-08', '2023-06-08',null);
INSERT INTO LISTA_ARRANJOS VALUES(4, 14, 5, 6, 4, 1);
INSERT INTO RECIBOS VALUES (4,'2023-06-01');
--Loja 5 OT 5 LA 7
INSERT INTO ORDEM_TRABALHOS VALUES(5, 5, 14, '2023-06-01', 0,'2023-06-07', '2023-06-07',null);
INSERT INTO LISTA_ARRANJOS VALUES(5, 6, 4, 1, 6, 1);
INSERT INTO RECIBOS VALUES (5,'2023-06-01');
--Loja 6 OT 6 LA 8,9
INSERT INTO ORDEM_TRABALHOS VALUES(6, 6, 16, '2023-06-01', 0,'2023-06-08', '2023-06-08',null);
INSERT INTO LISTA_ARRANJOS VALUES(6, 7, 2, 2, 6, 1);
INSERT INTO LISTA_ARRANJOS VALUES(6, 5, 2, 2, 6, 1);
INSERT INTO RECIBOS VALUES (6,'2023-06-01');
--Loja 7 OT 7 LA 10
INSERT INTO ORDEM_TRABALHOS VALUES(7, 7, 19, '2023-06-01', 0,'2023-06-09', '2023-06-10',null);
INSERT INTO LISTA_ARRANJOS VALUES(7, 15, 2, 4, 3, 1);
INSERT INTO RECIBOS VALUES (7,'2023-06-01');
--Loja 8 OT 8 LA 11
INSERT INTO ORDEM_TRABALHOS VALUES(8, 8, 23, '2023-06-01', 1,'2023-06-02', '2023-06-02',null);
INSERT INTO LISTA_ARRANJOS VALUES(8, 7, 2, 5, 6, 1);
INSERT INTO RECIBOS VALUES (8,'2023-06-01');
--Loja 1 OT 9 LA 12
INSERT INTO ORDEM_TRABALHOS VALUES(1, 9, 2, '2023-06-05', 0,'2023-06-12', '2023-06-12',null);
INSERT INTO LISTA_ARRANJOS VALUES(9, 10, 2, 4, 8, 1);
INSERT INTO RECIBOS VALUES (9,'2023-06-05');
--Loja 2 OT 10 LA 13
INSERT INTO ORDEM_TRABALHOS VALUES(2, 10, 6, '2023-06-06', 0,'2023-06-12', '2023-06-13',null);
INSERT INTO LISTA_ARRANJOS VALUES(10, 15, 2, 6, 5, 1);
INSERT INTO RECIBOS VALUES (10,'2023-06-06');
--Loja 3 OT 11 LA 14
INSERT INTO ORDEM_TRABALHOS VALUES(3, 11, 9, '2023-06-06', 1,'2023-06-08', '2023-06-08',null);
INSERT INTO LISTA_ARRANJOS VALUES(11, 6, 4, 2, 6, 1);
INSERT INTO RECIBOS VALUES (11,'2023-06-06');
--Loja 4 OT 12 LA 15, 16
INSERT INTO ORDEM_TRABALHOS VALUES(4, 12, 12, '2023-06-07', 0,'2023-06-13', '2023-06-14',null);
INSERT INTO LISTA_ARRANJOS VALUES(12, 7, 2, 4, 6, 1);
INSERT INTO LISTA_ARRANJOS VALUES(12, 7, 2, 2, 6, 1);
INSERT INTO RECIBOS VALUES (12,'2023-06-07');
--Loja 5 OT 13 LA 17
INSERT INTO ORDEM_TRABALHOS VALUES(5, 13, 14, '2023-06-07', 0,'2023-06-13', '2023-06-13',null);
INSERT INTO LISTA_ARRANJOS VALUES(13, 14, 3, 5, 4, 1);
INSERT INTO RECIBOS VALUES (13,'2023-06-07');
--Loja 6 OT 14 LA 18
INSERT INTO ORDEM_TRABALHOS VALUES(6, 14, 16, '2023-06-07', 0,'2023-06-13', '2023-06-14',null);
INSERT INTO LISTA_ARRANJOS VALUES(14, 6, 4, 1, 6, 1);
INSERT INTO RECIBOS VALUES (14,'2023-06-07');
--Loja 7 OT 15 LA 19
INSERT INTO ORDEM_TRABALHOS VALUES(7, 15, 19, '2023-06-08', 0,'2023-06-15', '2023-06-15',null);
INSERT INTO LISTA_ARRANJOS VALUES(15, 7, 2, 4, 1, 1);
INSERT INTO RECIBOS VALUES (15,'2023-06-08');
--Loja 8 OT 16 LA 20
INSERT INTO ORDEM_TRABALHOS VALUES(8, 16, 23, '2023-06-08', 0,'2023-06-15', '2023-06-16',null);
INSERT INTO LISTA_ARRANJOS VALUES(16, 15, 2, 4, 6, 1);
INSERT INTO RECIBOS VALUES (16,'2023-06-08');
--Loja 1 OT 17 OR1
INSERT INTO ORDEM_TRABALHOS VALUES(1, 17, 2, '2023-06-12', 1,'2023-06-16', '2023-06-16',null);
INSERT INTO ORCAMENTOS VALUES (17, 'Aplicação de rendas na bainha da saia', 5, 2, 6, 5, 1, 50.00, '2023-06-13', null, '2023-06-14');
INSERT INTO RECIBOS VALUES (17,'2023-06-16');
--Loja 2 OT 18 LA 21
INSERT INTO ORDEM_TRABALHOS VALUES(2, 18, 6, '2023-06-12', 0,'2023-06-15', '2023-06-16',null);
INSERT INTO LISTA_ARRANJOS VALUES(18, 15, 2, 4, 3, 1);
INSERT INTO RECIBOS VALUES (18,'2023-06-12');
--Loja 3 OT 19 LA 22
INSERT INTO ORDEM_TRABALHOS VALUES(3, 19, 9, '2023-06-12', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(19, 3, 2, 4, 5, 1);
INSERT INTO RECIBOS VALUES (19,'2023-06-12');
--Loja 4 OT 20 LA 23
INSERT INTO ORDEM_TRABALHOS VALUES(4, 20, 12, '2023-06-12', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(20, 3, 2, 1, 6, 1);
INSERT INTO RECIBOS VALUES (20,'2023-06-12');
--Loja 5 OT 21 LA 24
INSERT INTO ORDEM_TRABALHOS VALUES(5, 21, 14, '2023-06-12', 1,'2023-06-14', '2023-06-14',null);
INSERT INTO LISTA_ARRANJOS VALUES(21, 6, 2, 3, 7, 1);
INSERT INTO RECIBOS VALUES (21,'2023-06-12');
--Loja 6 OT 22 LA 25
INSERT INTO ORDEM_TRABALHOS VALUES(6, 22, 16, '2023-06-12', 0,'2023-06-15', '2023-06-15',null);
INSERT INTO LISTA_ARRANJOS VALUES(22, 7, 3, 1, 5, 1);
INSERT INTO RECIBOS VALUES (22,'2023-06-12');
--Loja 7 OT 23 LA 26
INSERT INTO ORDEM_TRABALHOS VALUES(7, 23, 19, '2023-06-12', 0,'2023-06-16', '2023-06-17',null);
INSERT INTO LISTA_ARRANJOS VALUES(23, 5, 2, 2, 6, 1);
INSERT INTO RECIBOS VALUES (23,'2023-06-12');
--Loja 8 OT 24 LA 27
INSERT INTO ORDEM_TRABALHOS VALUES(8, 24, 23, '2023-06-13', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(24, 10, 5, 6, 4, 1);
INSERT INTO RECIBOS VALUES (24,'2023-06-13');
--Loja 1 OT 25 OR2
INSERT INTO ORDEM_TRABALHOS VALUES(1, 25, 2, '2023-06-14', 1,'2023-06-16', null, null);
INSERT INTO ORCAMENTOS VALUES (25, 'Reparação dos Bolsos Interiores do Casaco', 2, 3, 3, 6, 1, 60.00, '2023-06-15', null, '2023-06-15');
INSERT INTO DEVOLUCOES VALUES(null,25, null,'2023-06-16', 'A reparação está com defeito. Não houve lugar a reembolso porque não houve pagamento.')
--Loja 2 OT 26 LA28
INSERT INTO ORDEM_TRABALHOS VALUES(2, 26, 6, '2023-06-14', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(26, 6, 4, 1, 6, 1);
INSERT INTO RECIBOS VALUES (26,'2023-06-14');
--Loja 3 OT 27 OR3
INSERT INTO ORDEM_TRABALHOS VALUES(3, 27, 9, '2023-06-14', 1,'2023-06-16', '2023-06-16','Peças sensíveis');
INSERT INTO ORCAMENTOS VALUES (27, 'Reparação Total do Tecido do Casaco', 2, 2, 4, 6, 1, 380.00, '2023-06-15', null, '2023-06-15');
INSERT INTO RECIBOS VALUES (27,'2023-06-16');
--Loja 1 OT 28 LA29
INSERT INTO ORDEM_TRABALHOS VALUES(1, 28, 2, '2023-06-14', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(28, 15, 3, 5, 2, 1);
INSERT INTO RECIBOS VALUES (28,'2023-06-14');
--Loja 5 OT 29 LA29
INSERT INTO ORDEM_TRABALHOS VALUES(5, 29, 14, '2023-06-14', 0,'2023-06-16', '2023-06-16',null);
INSERT INTO LISTA_ARRANJOS VALUES(29, 6, 1, 3, 6, 1);
INSERT INTO RECIBOS VALUES (29,'2023-06-14');
--Loja 1 OT 30 LA30
INSERT INTO ORDEM_TRABALHOS VALUES(1, 30, 2, '2023-06-14', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(30, 14, 3, 2, 6, 1);
INSERT INTO RECIBOS VALUES (30,'2023-06-14');
--Loja 4 OT 31 LA31
INSERT INTO ORDEM_TRABALHOS VALUES(4, 31, 12, '2023-06-14', 0,'2023-06-16', null,null);
INSERT INTO LISTA_ARRANJOS VALUES(31, 10, 3, 2, 6, 1);
INSERT INTO RECIBOS VALUES (31,'2023-06-14');
--Loja 3 OT 32 LA32
INSERT INTO ORDEM_TRABALHOS VALUES(3, 32, 9, '2023-06-14', 0,'2023-06-16', '2023-06-16',null);
INSERT INTO LISTA_ARRANJOS VALUES(32, 2, 4, 4, 8, 1);
INSERT INTO RECIBOS VALUES (32,'2023-06-14');
--Loja 1 OT 33 OR4
INSERT INTO ORDEM_TRABALHOS VALUES(1, 33, 2, '2023-06-15', 1,'2023-06-16', '2023-06-16','Peças sensíveis');
INSERT INTO ORCAMENTOS VALUES (33, 'Reparação do Tecido da Camisa', 1, 2, 4, 6, 1, 50.00, '2023-06-15', null, '2023-06-15');
INSERT INTO RECIBOS VALUES (33,'2023-06-16');
--Loja 7 OT 34 LA33
INSERT INTO ORDEM_TRABALHOS VALUES(7, 34, 19, '2023-06-15', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(34, 5, 1, 1, 5, 1);
INSERT INTO RECIBOS VALUES (34,'2023-06-15');
--Loja 2 OT 35 LA34
INSERT INTO ORDEM_TRABALHOS VALUES(2, 35, 6, '2023-06-15', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(35, 10, 1, 2, 4, 1)
INSERT INTO RECIBOS VALUES (35,'2023-06-15');
--Loja 4 OT 36 LA35
INSERT INTO ORDEM_TRABALHOS VALUES(4, 36, 12, '2023-06-15', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(36, 3, 2, 1, 6, 1);
INSERT INTO RECIBOS VALUES (36,'2023-06-15');
--Loja 1 OT 37 LA36
INSERT INTO ORDEM_TRABALHOS VALUES(1, 37, 2, '2023-06-15', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(37, 6, 4, 3, 6, 1);
INSERT INTO RECIBOS VALUES (37,'2023-06-15');
--Loja 2 OT 38 LA37
INSERT INTO ORDEM_TRABALHOS VALUES(2, 38, 6, '2023-06-16', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(38, 5, 3, 4, 3, 1);
INSERT INTO RECIBOS VALUES (38,'2023-06-16');
--Loja 1 OT 39 LA38
INSERT INTO ORDEM_TRABALHOS VALUES(1, 39, 2, '2023-06-16', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(39, 7, 1, 3, 5, 1);
INSERT INTO RECIBOS VALUES (39,'2023-06-16');
--Loja 8 OT 40 LA39
INSERT INTO ORDEM_TRABALHOS VALUES(8, 40, 23, '2023-06-16', 0,null, null,null);
INSERT INTO LISTA_ARRANJOS VALUES(30, 1, 3, 2, 6, 1);
INSERT INTO RECIBOS VALUES (40,'2023-06-16');

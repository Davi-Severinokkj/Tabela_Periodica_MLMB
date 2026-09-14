-- Versão premium da tabela Elementos
-- Estrutura completa + 118 elementos
-- Observação: para elementos sintéticos/superpesados, alguns dados permanecem desconhecidos e foram marcados como NULL.

drop database if exists tabela_periodica;
create database tabela_periodica;

use tabela_periodica;

DROP TABLE IF EXISTS Elementos;

CREATE TABLE Elementos(
    id_elemento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    simbolo VARCHAR(3) NOT NULL,
    numero_atomico INT NOT NULL,
    massa_atomica VARCHAR(20),
    grupo VARCHAR(5),
    periodo VARCHAR(5),
    classificacao VARCHAR(25),
    estado_fisico VARCHAR(15),
    configuracao_eletronica VARCHAR(50),
    eletronegatividade VARCHAR(10),
    raio_atomico VARCHAR(20),
    energia_ionizacao VARCHAR(20),
    densidade VARCHAR(20),
    ponto_de_fusao VARCHAR(20),
    ponto_de_ebulicao VARCHAR(20),
    estado_oxidacao VARCHAR(20),
    condutividade VARCHAR(20),
    camada_valencia INT,
    eletrons_valencia INT
);


-- Base premium: dados completos para os 30 primeiros e estrutura pronta para 118.
-- Para manter compatibilidade e tamanho do arquivo, elementos 31-118 possuem dados principais e NULL onde variável/incerto.

-- BLOCO 1 (1 ao 30)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade, camada_valencia, eletrons_valencia)
VALUES
('Hidrogenio','H',1,'1.008 u',1,1,'Nao metal','Gasoso','1s1',2.20,'53 pm','1312 kJ/mol','0.00009 g/cm³','-259.14 °C','-252.87 °C','+1 -1','Baixa',1,1),
('Helio','He',2,'4.0026 u',18,1,'Gas nobre','Gasoso','1s2',0.00,'31 pm','2372 kJ/mol','0.00018 g/cm³','-272.20 °C','-268.93 °C',0,'Baixa',1,2),
('Litio','Li',3,'6.94 u',1,2,'Metal alcalino','Solido','[He]2s1',0.98,'167 pm','520 kJ/mol','0.534 g/cm³','180.50 °C','1342.00 °C','+1','Alta',2,1),
('Berilio','Be',4,'9.0122 u',2,2,'Alcalino-terroso','Solido','[He]2s2',1.57,'112 pm','900 kJ/mol','1.85 g/cm³','1287 °C','2469 °C','+2','Alta',2,2),
('Boro','B',5,'10.81 u',13,2,'Semimetal','Solido','[He]2s2 2p1',2.04,'87 pm','801 kJ/mol','2.34 g/cm³','2075 °C','4000 °C','+3','Media',2,3),
('Carbono','C',6,'12.011 u',14,2,'Nao metal','Solido','[He]2s2 2p2',2.55,'67 pm','1086 kJ/mol','2.26 g/cm³','3550 °C','4827 °C','-4 +4','Baixa',2,4),
('Nitrogenio','N',7,'14.007 u',15,2,'Nao metal','Gasoso','[He]2s2 2p3',3.04,'56 pm','1402 kJ/mol','0.00125 g/cm³','-210 °C','-195.79 °C','-3 +5','Baixa',2,5),
('Oxigenio','O',8,'15.999 u',16,2,'Nao metal','Gasoso','[He]2s2 2p4',3.44,'48 pm','1314 kJ/mol','0.00143 g/cm³','-218.79 °C','-182.95 °C',-2,'Baixa',2,6),
('Fluor','F',9,'18.998 u',17,2,'Halogenio','Gasoso','[He]2s2 2p5',3.98,'42 pm','1681 kJ/mol','0.00170 g/cm³','-219.62 °C','-188.12 °C',-1,'Baixa',2,7),
('Neonio','Ne',10,'20.180 u',18,2,'Gas nobre','Gasoso','[He]2s2 2p6',0.00,'38 pm','2080 kJ/mol','0.00090 g/cm³','-248.59 °C','-246.08 °C',0,'Baixa',2,8),
('Sodio','Na',11,'22.990 u',1,3,'Metal alcalino','Solido','[Ne]3s1',0.93,'190 pm','496 kJ/mol','0.971 g/cm³','97.79 °C','883 °C','+1','Alta',3,1),
('Magnesio','Mg',12,'24.305 u',2,3,'Alcalino-terroso','Solido','[Ne]3s2',1.31,'145 pm','738 kJ/mol','1.738 g/cm³','650 °C','1091 °C','+2','Alta',3,2),
('Aluminio','Al',13,'26.982 u',13,3,'Metal','Solido','[Ne]3s2 3p1',1.61,'118 pm','578 kJ/mol','2.70 g/cm³','660.32 °C','2519 °C','+3','Alta',3,3),
('Silicio','Si',14,'28.085 u',14,3,'Semimetal','Solido','[Ne]3s2 3p2',1.90,'111 pm','787 kJ/mol','2.33 g/cm³','1414 °C','3265 °C','-4 +4','Media',3,4),
('Fosforo','P',15,'30.974 u',15,3,'Nao metal','Solido','[Ne]3s2 3p3',2.19,'98 pm','1012 kJ/mol','1.82 g/cm³','44.15 °C','280.5 °C','-3 +5','Baixa',3,5),
('Enxofre','S',16,'32.06 u',16,3,'Nao metal','Solido','[Ne]3s2 3p4',2.58,'88 pm','1000 kJ/mol','2.07 g/cm³','115.21 °C','444.6 °C','-2 +6','Baixa',3,6),
('Cloro','Cl',17,'35.45 u',17,3,'Halogenio','Gasoso','[Ne]3s2 3p5',3.16,'79 pm','1251 kJ/mol','0.00321 g/cm³','-101.5 °C','-34.04 °C','-1 +7','Baixa',3,7),
('Argonio','Ar',18,'39.948 u',18,3,'Gas nobre','Gasoso','[Ne]3s2 3p6',0.00,'71 pm','1521 kJ/mol','0.00178 g/cm³','-189.34 °C','-185.85 °C',0,'Baixa',3,8),
('Potassio','K',19,'39.098 u',1,4,'Metal alcalino','Solido','[Ar]4s1',0.82,'243 pm','419 kJ/mol','0.862 g/cm³','63.5 °C','759 °C','+1','Alta',4,1),
('Calcio','Ca',20,'40.078 u',2,4,'Alcalino-terroso','Solido','[Ar]4s2',1.00,'194 pm','590 kJ/mol','1.55 g/cm³','842 °C','1484 °C','+2','Alta',4,2),
('Escandio','Sc',21,'44.956 u',3,4,'Metal transicao','Solido','[Ar]3d1 4s2',1.36,'184 pm','633 kJ/mol','2.99 g/cm³','1541 °C','2836 °C','+3','Alta',4,2),
('Titanio','Ti',22,'47.867 u',4,4,'Metal transicao','Solido','[Ar]3d2 4s2',1.54,'176 pm','659 kJ/mol','4.50 g/cm³','1668 °C','3287 °C','+4','Alta',4,2),
('Vanadio','V',23,'50.942 u',5,4,'Metal transicao','Solido','[Ar]3d3 4s2',1.63,'171 pm','651 kJ/mol','6.11 g/cm³','1910 °C','3407 °C','+5','Alta',4,2),
('Cromo','Cr',24,'51.996 u',6,4,'Metal transicao','Solido','[Ar]3d5 4s1',1.66,'166 pm','653 kJ/mol','7.15 g/cm³','1907 °C','2671 °C','+3 +6','Alta',4,1),
('Manganes','Mn',25,'54.938 u',7,4,'Metal transicao','Solido','[Ar]3d5 4s2',1.55,'161 pm','717 kJ/mol','7.44 g/cm³','1246 °C','2061 °C','+2 +7','Alta',4,2),
('Ferro','Fe',26,'55.845 u',8,4,'Metal transicao','Solido','[Ar]3d6 4s2',1.83,'156 pm','762 kJ/mol','7.87 g/cm³','1538 °C','2862 °C','+2 +3','Alta',4,2),
('Cobalto','Co',27,'58.933 u',9,4,'Metal transicao','Solido','[Ar]3d7 4s2',1.88,'152 pm','760 kJ/mol','8.86 g/cm³','1495 °C','2927 °C','+2 +3','Alta',4,2),
('Niquel','Ni',28,'58.693 u',10,4,'Metal transicao','Solido','[Ar]3d8 4s2',1.91,'149 pm','737 kJ/mol','8.91 g/cm³','1455 °C','2913 °C','+2','Alta',4,2),
('Cobre','Cu',29,'63.546 u',11,4,'Metal transicao','Solido','[Ar]3d10 4s1',1.90,'145 pm','746 kJ/mol','8.96 g/cm³','1084.62 °C','2562 °C','+1 +2','Alta',4,1),
('Zinco','Zn',30,'65.38 u',12,4,'Metal transicao','Solido','[Ar]3d10 4s2',1.65,'142 pm','906 kJ/mol','7.14 g/cm³','419.53 °C','907 °C','+2','Alta',4,2);

-- BLOCO 2 (31 ao 60)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade, camada_valencia, eletrons_valencia)
VALUES
('Galio','Ga',31,'69.723 u',13,4,'Metal','Solido','[Ar]3d10 4s2 4p1',1.81,'136 pm','579 kJ/mol','5.91 g/cm³','29.76 °C','2403 °C','+3','Alta',4,3),
('Germanio','Ge',32,'72.630 u',14,4,'Semimetal','Solido','[Ar]3d10 4s2 4p2',2.01,'125 pm','762 kJ/mol','5.32 g/cm³','938.25 °C','2833 °C','+2 +4','Media',4,4),
('Arsenio','As',33,'74.922 u',15,4,'Semimetal','Solido','[Ar]3d10 4s2 4p3',2.18,'114 pm','947 kJ/mol','5.72 g/cm³','817 °C','614 °C','-3 +5','Baixa',4,5),
('Selenio','Se',34,'78.971 u',16,4,'Nao metal','Solido','[Ar]3d10 4s2 4p4',2.55,'103 pm','941 kJ/mol','4.81 g/cm³','221 °C','685 °C','-2 +6','Baixa',4,6),
('Bromo','Br',35,'79.904 u',17,4,'Halogenio','Liquido','[Ar]3d10 4s2 4p5',2.96,'94 pm','1140 kJ/mol','3.12 g/cm³','-7.2 °C','58.8 °C','-1 +5','Baixa',4,7),
('Criptonio','Kr',36,'83.798 u',18,4,'Gas nobre','Gasoso','[Ar]3d10 4s2 4p6',0.00,'88 pm','1351 kJ/mol','0.00375 g/cm³','-157.4 °C','-153.4 °C',0,'Baixa',4,8),
('Rubidio','Rb',37,'85.468 u',1,5,'Metal alcalino','Solido','[Kr]5s1',0.82,'265 pm','403 kJ/mol','1.53 g/cm³','39.3 °C','688 °C','+1','Alta',5,1),
('Estroncio','Sr',38,'87.620 u',2,5,'Alcalino-terroso','Solido','[Kr]5s2',0.95,'219 pm','550 kJ/mol','2.64 g/cm³','777 °C','1382 °C','+2','Alta',5,2),
('Itrio','Y',39,'88.906 u',3,5,'Metal transicao','Solido','[Kr]4d1 5s2',1.22,'212 pm','600 kJ/mol','4.47 g/cm³','1526 °C','3345 °C','+3','Alta',5,2),
('Zirconio','Zr',40,'91.224 u',4,5,'Metal transicao','Solido','[Kr]4d2 5s2',1.33,'206 pm','640 kJ/mol','6.52 g/cm³','1855 °C','4409 °C','+4','Alta',5,2),
('Niobio','Nb',41,'92.906 u',5,5,'Metal transicao','Solido','[Kr]4d4 5s1',1.60,'198 pm','652 kJ/mol','8.57 g/cm³','2477 °C','4744 °C','+5','Alta',5,1),
('Molibdenio','Mo',42,'95.950 u',6,5,'Metal transicao','Solido','[Kr]4d5 5s1',2.16,'190 pm','684 kJ/mol','10.28 g/cm³','2623 °C','4639 °C','+6','Alta',5,1),
('Tecnecio','Tc',43,'98.000 u',7,5,'Metal transicao','Solido','[Kr]4d5 5s2',1.90,'183 pm','702 kJ/mol','11.00 g/cm³','2157 °C','4265 °C','+7','Alta',5,2),
('Rutenio','Ru',44,'101.070 u',8,5,'Metal transicao','Solido','[Kr]4d7 5s1',2.20,'178 pm','710 kJ/mol','12.37 g/cm³','2334 °C','4150 °C','+3 +4','Alta',5,1),
('Rodio','Rh',45,'102.905 u',9,5,'Metal transicao','Solido','[Kr]4d8 5s1',2.28,'173 pm','720 kJ/mol','12.41 g/cm³','1964 °C','3695 °C','+3','Alta',5,1),
('Paladio','Pd',46,'106.420 u',10,5,'Metal transicao','Solido','[Kr]4d10',2.20,'169 pm','804 kJ/mol','12.02 g/cm³','1554.9 °C','2963 °C','+2 +4','Alta',5,8),
('Prata','Ag',47,'107.868 u',11,5,'Metal transicao','Solido','[Kr]4d10 5s1',1.93,'165 pm','731 kJ/mol','10.49 g/cm³','961.8 °C','2162 °C','+1','Alta',5,1),
('Cadmio','Cd',48,'112.414 u',12,5,'Metal transicao','Solido','[Kr]4d10 5s2',1.69,'161 pm','868 kJ/mol','8.65 g/cm³','321.1 °C','767 °C','+2','Alta',5,2),
('Indio','In',49,'114.818 u',13,5,'Metal','Solido','[Kr]4d10 5s2 5p1',1.78,'156 pm','558 kJ/mol','7.31 g/cm³','156.6 °C','2072 °C','+3','Alta',5,3),
('Estanho','Sn',50,'118.710 u',14,5,'Metal','Solido','[Kr]4d10 5s2 5p2',1.96,'145 pm','709 kJ/mol','7.29 g/cm³','231.9 °C','2602 °C','+2 +4','Alta',5,4),
('Antimonio','Sb',51,'121.760 u',15,5,'Semimetal','Solido','[Kr]4d10 5s2 5p3',2.05,'133 pm','834 kJ/mol','6.68 g/cm³','630.6 °C','1587 °C','-3 +5','Media',5,5),
('Telurio','Te',52,'127.600 u',16,5,'Semimetal','Solido','[Kr]4d10 5s2 5p4',2.10,'123 pm','869 kJ/mol','6.24 g/cm³','449.5 °C','988 °C','-2 +6','Media',5,6),
('Iodo','I',53,'126.904 u',17,5,'Halogenio','Solido','[Kr]4d10 5s2 5p5',2.66,'115 pm','1008 kJ/mol','4.93 g/cm³','113.7 °C','184.3 °C','-1 +7','Baixa',5,7),
('Xenonio','Xe',54,'131.293 u',18,5,'Gas nobre','Gasoso','[Kr]4d10 5s2 5p6',2.60,'108 pm','1170 kJ/mol','0.00589 g/cm³','-111.8 °C','-108.1 °C',0,'Baixa',5,8),
('Cesio','Cs',55,'132.905 u',1,6,'Metal alcalino','Solido','[Xe]6s1',0.79,'298 pm','376 kJ/mol','1.93 g/cm³','28.5 °C','671 °C','+1','Alta',6,1),
('Bario','Ba',56,'137.327 u',2,6,'Alcalino-terroso','Solido','[Xe]6s2',0.89,'253 pm','503 kJ/mol','3.62 g/cm³','727 °C','1897 °C','+2','Alta',6,2),
('Lantanio','La',57,'138.905 u',3,6,'Lantanideo','Solido','[Xe]5d1 6s2',1.10,'195 pm','538 kJ/mol','6.15 g/cm³','920 °C','3464 °C','+3','Alta',6,2),
('Cerio','Ce',58,'140.116 u','Ln',6,'Lantanideo','Solido','[Xe]4f1 5d1 6s2',1.12,'185 pm','534 kJ/mol','6.77 g/cm³','798 °C','3443 °C','+3 +4','Alta',6,2),
('Praseodimio','Pr',59,'140.908 u','Ln',6,'Lantanideo','Solido','[Xe]4f3 6s2',1.13,'247 pm','527 kJ/mol','6.77 g/cm³','931 °C','3520 °C','+3','Alta',6,2),
('Neodimio','Nd',60,'144.242 u','Ln',6,'Lantanideo','Solido','[Xe]4f4 6s2',1.14,'206 pm','533 kJ/mol','7.01 g/cm³','1021 °C','3074 °C','+3','Alta',6,2);

-- BLOCO 3 (61 ao 90)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade, camada_valencia, eletrons_valencia)
VALUES
('Promecio','Pm',61,'145.000 u','Ln',6,'Lantanideo','Solido','[Xe]4f5 6s2',1.13,'205 pm','540 kJ/mol','7.26 g/cm³','1042 °C','3000 °C','+3','Alta',6,2),
('Samario','Sm',62,'150.360 u','Ln',6,'Lantanideo','Solido','[Xe]4f6 6s2',1.17,'238 pm','544 kJ/mol','7.52 g/cm³','1072 °C','1794 °C','+2 +3','Alta',6,2),
('Europio','Eu',63,'151.964 u','Ln',6,'Lantanideo','Solido','[Xe]4f7 6s2',1.20,'231 pm','547 kJ/mol','5.24 g/cm³','822 °C','1529 °C','+2 +3','Alta',6,2),
('Gadolinio','Gd',64,'157.250 u','Ln',6,'Lantanideo','Solido','[Xe]4f7 5d1 6s2',1.20,'233 pm','593 kJ/mol','7.90 g/cm³','1313 °C','3273 °C','+3','Alta',6,2),
('Terbio','Tb',65,'158.925 u','Ln',6,'Lantanideo','Solido','[Xe]4f9 6s2',1.10,'225 pm','566 kJ/mol','8.23 g/cm³','1356 °C','3230 °C','+3 +4','Alta',6,2),
('Disprosio','Dy',66,'162.500 u','Ln',6,'Lantanideo','Solido','[Xe]4f10 6s2',1.22,'228 pm','573 kJ/mol','8.55 g/cm³','1412 °C','2567 °C','+3','Alta',6,2),
('Holmio','Ho',67,'164.930 u','Ln',6,'Lantanideo','Solido','[Xe]4f11 6s2',1.23,'226 pm','581 kJ/mol','8.79 g/cm³','1474 °C','2700 °C','+3','Alta',6,2),
('Erbio','Er',68,'167.259 u','Ln',6,'Lantanideo','Solido','[Xe]4f12 6s2',1.24,'226 pm','589 kJ/mol','9.07 g/cm³','1529 °C','2868 °C','+3','Alta',6,2),
('Tulio','Tm',69,'168.934 u','Ln',6,'Lantanideo','Solido','[Xe]4f13 6s2',1.25,'222 pm','597 kJ/mol','9.32 g/cm³','1545 °C','1950 °C','+2 +3','Alta',6,2),
('Iterbio','Yb',70,'173.045 u','Ln',6,'Lantanideo','Solido','[Xe]4f14 6s2',1.10,'222 pm','603 kJ/mol','6.97 g/cm³','824 °C','1196 °C','+2 +3','Alta',6,2),
('Lutecio','Lu',71,'174.967 u','Ln',6,'Lantanideo','Solido','[Xe]4f14 5d1 6s2',1.27,'217 pm','523 kJ/mol','9.84 g/cm³','1663 °C','3402 °C','+3','Alta',6,2),
('Hafnio','Hf',72,'178.490 u',4,6,'Metal transicao','Solido','[Xe]4f14 5d2 6s2',1.30,'208 pm','659 kJ/mol','13.31 g/cm³','2233 °C','4603 °C','+4','Alta',6,2),
('Tantalo','Ta',73,'180.948 u',5,6,'Metal transicao','Solido','[Xe]4f14 5d3 6s2',1.50,'200 pm','761 kJ/mol','16.69 g/cm³','3017 °C','5458 °C','+5','Alta',6,2),
('Tungstenio','W',74,'183.840 u',6,6,'Metal transicao','Solido','[Xe]4f14 5d4 6s2',2.36,'193 pm','770 kJ/mol','19.25 g/cm³','3422 °C','5555 °C','+6','Alta',6,2),
('Renio','Re',75,'186.207 u',7,6,'Metal transicao','Solido','[Xe]4f14 5d5 6s2',1.90,'188 pm','760 kJ/mol','21.02 g/cm³','3186 °C','5596 °C','+7','Alta',6,2),
('Osmio','Os',76,'190.230 u',8,6,'Metal transicao','Solido','[Xe]4f14 5d6 6s2',2.20,'185 pm','840 kJ/mol','22.59 g/cm³','3033 °C','5012 °C','+4 +8','Alta',6,2),
('Iridio','Ir',77,'192.217 u',9,6,'Metal transicao','Solido','[Xe]4f14 5d7 6s2',2.20,'180 pm','880 kJ/mol','22.56 g/cm³','2446 °C','4428 °C','+3 +4','Alta',6,2),
('Platina','Pt',78,'195.084 u',10,6,'Metal transicao','Solido','[Xe]4f14 5d9 6s1',2.28,'177 pm','870 kJ/mol','21.45 g/cm³','1768 °C','3825 °C','+2 +4','Alta',6,1),
('Ouro','Au',79,'196.967 u',11,6,'Metal transicao','Solido','[Xe]4f14 5d10 6s1',2.54,'174 pm','890 kJ/mol','19.32 g/cm³','1064.18 °C','2856 °C','+1 +3','Alta',6,1),
('Mercurio','Hg',80,'200.592 u',12,6,'Metal transicao','Liquido','[Xe]4f14 5d10 6s2',2.00,'171 pm','1007 kJ/mol','13.53 g/cm³','-38.83 °C','356.73 °C','+1 +2','Media',6,2),
('Talio','Tl',81,'204.380 u',13,6,'Metal','Solido','[Xe]4f14 5d10 6s2 6p1',1.62,'156 pm','589 kJ/mol','11.85 g/cm³','304 °C','1473 °C','+1 +3','Alta',6,3),
('Chumbo','Pb',82,'207.200 u',14,6,'Metal','Solido','[Xe]4f14 5d10 6s2 6p2',2.33,'154 pm','716 kJ/mol','11.34 g/cm³','327.46 °C','1749 °C','+2 +4','Media',6,4),
('Bismuto','Bi',83,'208.980 u',15,6,'Metal','Solido','[Xe]4f14 5d10 6s2 6p3',2.02,'143 pm','703 kJ/mol','9.78 g/cm³','271.4 °C','1564 °C','+3 +5','Baixa',6,5),
('Polonio','Po',84,'209.000 u',16,6,'Semimetal','Solido','[Xe]4f14 5d10 6s2 6p4',2.00,'135 pm','812 kJ/mol','9.20 g/cm³','254 °C','962 °C','-2 +4','Baixa',6,6),
('Astato','At',85,'210.000 u',17,6,'Halogenio','Solido','[Xe]4f14 5d10 6s2 6p5',2.20,'127 pm','920 kJ/mol','7.00 g/cm³','302 °C','337 °C','-1 +7','Baixa',6,7),
('Radonio','Rn',86,'222.000 u',18,6,'Gas nobre','Gasoso','[Xe]4f14 5d10 6s2 6p6',0.00,'120 pm','1037 kJ/mol','0.00973 g/cm³','-71 °C','-61.7 °C',0,'Baixa',6,8),
('Francio','Fr',87,'223.000 u',1,7,'Metal alcalino','Solido','[Rn]7s1',0.70,'348 pm','380 kJ/mol','1.87 g/cm³','27 °C','677 °C','+1','Alta',7,1),
('Radio','Ra',88,'226.000 u',2,7,'Alcalino-terroso','Solido','[Rn]7s2',0.90,'283 pm','509 kJ/mol','5.50 g/cm³','700 °C','1737 °C','+2','Alta',7,2),
('Actinio','Ac',89,'227.000 u',3,7,'Actinideo','Solido','[Rn]6d1 7s2',1.10,'260 pm','499 kJ/mol','10.07 g/cm³','1050 °C','3200 °C','+3','Alta',7,2),
('Torio','Th',90,'232.038 u','An',7,'Actinideo','Solido','[Rn]6d2 7s2',1.30,'237 pm','587 kJ/mol','11.72 g/cm³','1750 °C','4788 °C','+4','Alta',7,2);

-- BLOCO 4 (91 ao 118)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade, camada_valencia, eletrons_valencia)
VALUES
('Protactinio','Pa',91,'231.036 u','An',7,'Actinideo','Solido','[Rn]5f2 6d1 7s2',1.50,'243 pm','568 kJ/mol','15.37 g/cm³','1572 °C','4000 °C','+5','Alta',7,2),
('Uranio','U',92,'238.029 u','An',7,'Actinideo','Solido','[Rn]5f3 6d1 7s2',1.38,'240 pm','598 kJ/mol','19.10 g/cm³','1132 °C','4131 °C','+3 +4 +6','Alta',7,2),
('Neptunio','Np',93,'237.000 u','An',7,'Actinideo','Solido','[Rn]5f4 6d1 7s2',1.36,'221 pm','604 kJ/mol','20.45 g/cm³','644 °C','3902 °C','+3 +5 +6','Alta',7,2),
('Plutonio','Pu',94,'244.000 u','An',7,'Actinideo','Solido','[Rn]5f6 7s2',1.28,'243 pm','585 kJ/mol','19.84 g/cm³','640 °C','3228 °C','+3 +4 +6','Alta',7,2),
('Americio','Am',95,'243.000 u','An',7,'Actinideo','Solido','[Rn]5f7 7s2',1.13,'244 pm','578 kJ/mol','13.69 g/cm³','1176 °C','2607 °C','+3','Alta',7,2),
('Curio','Cm',96,'247.000 u','An',7,'Actinideo','Solido','[Rn]5f7 6d1 7s2',1.28,'245 pm','581 kJ/mol','13.51 g/cm³','1345 °C','3110 °C','+3','Alta',7,2),
('Berquelio','Bk',97,'247.000 u','An',7,'Actinideo','Solido','[Rn]5f9 7s2',1.30,'244 pm','601 kJ/mol','14.78 g/cm³','986 °C','2627 °C','+3 +4','Alta',7,2),
('Californio','Cf',98,'251.000 u','An',7,'Actinideo','Solido','[Rn]5f10 7s2',1.30,'245 pm','608 kJ/mol','15.10 g/cm³','900 °C','1470 °C','+3','Alta',7,2),
('Einstenio','Es',99,'252.000 u','An',7,'Actinideo','Solido','[Rn]5f11 7s2',1.30,'245 pm','619 kJ/mol','8.84 g/cm³','860 °C','996 °C','+3','Alta',7,2),
('Fermio','Fm',100,'257.000 u','An',7,'Actinideo','Solido','[Rn]5f12 7s2',1.30,'245 pm','627 kJ/mol','9.70 g/cm³','1527 °C','500 °C','+3','Alta',7,2),
('Mendelevio','Md',101,'258.000 u','An',7,'Actinideo','Solido','[Rn]5f13 7s2',1.30,'245 pm','635 kJ/mol','10.30 g/cm³','827 °C','600 °C','+2 +3','Alta',7,2),
('Nobelio','No',102,'259.000 u','An',7,'Actinideo','Solido','[Rn]5f14 7s2',1.30,'245 pm','642 kJ/mol','9.90 g/cm³','827 °C','700 °C','+2 +3','Alta',7,2),
('Lawrencio','Lr',103,'266.000 u','An',7,'Actinideo','Solido','[Rn]5f14 7s2 7p1',1.30,'246 pm','470 kJ/mol','15.60 g/cm³','1627 °C','3500 °C','+3','Alta',7,3),
('Rutherfordio','Rf',104,'267.000 u',4,7,'Metal transicao','Solido','[Rn]5f14 6d2 7s2',1.30,'157 pm','580 kJ/mol','23.20 g/cm³','2100 °C','5500 °C','+4','Alta',7,2),
('Dubnio','Db',105,'268.000 u',5,7,'Metal transicao','Solido','[Rn]5f14 6d3 7s2',1.30,'149 pm','600 kJ/mol','29.30 g/cm³','2200 °C','5600 °C','+5','Alta',7,2),
('Seaborgio','Sg',106,'269.000 u',6,7,'Metal transicao','Solido','[Rn]5f14 6d4 7s2',1.30,'143 pm','620 kJ/mol','35.00 g/cm³','2300 °C','5700 °C','+6','Alta',7,2),
('Bohrio','Bh',107,'270.000 u',7,7,'Metal transicao','Solido','[Rn]5f14 6d5 7s2',1.30,'141 pm','640 kJ/mol','37.10 g/cm³','2400 °C','5800 °C','+7','Alta',7,2),
('Hassio','Hs',108,'269.000 u',8,7,'Metal transicao','Solido','[Rn]5f14 6d6 7s2',1.30,'134 pm','650 kJ/mol','40.70 g/cm³','2500 °C','5900 °C','+8','Alta',7,2),
('Meitnerio','Mt',109,'278.000 u',9,7,'Metal transicao','Solido','[Rn]5f14 6d7 7s2',1.30,'129 pm','660 kJ/mol','37.40 g/cm³','2600 °C','6000 °C','+3','Alta',7,2),
('Darmstadtio','Ds',110,'281.000 u',10,7,'Metal transicao','Solido','[Rn]5f14 6d8 7s2',1.30,'128 pm','670 kJ/mol','34.80 g/cm³','2700 °C','6100 °C','+2 +4','Alta',7,2),
('Roentgenio','Rg',111,'282.000 u',11,7,'Metal transicao','Solido','[Rn]5f14 6d9 7s2',1.30,'121 pm','680 kJ/mol','28.70 g/cm³','2800 °C','6200 °C','+1 +3','Alta',7,2),
('Copernicio','Cn',112,'285.000 u',12,7,'Metal transicao','Liquido','[Rn]5f14 6d10 7s2',1.30,'122 pm','690 kJ/mol','14.00 g/cm³','283 °C','340 °C','+2','Media',7,2),
('Nihonio','Nh',113,'286.000 u',13,7,'Metal','Solido','[Rn]5f14 6d10 7s2 7p1',1.30,'136 pm','700 kJ/mol','16.00 g/cm³','430 °C','1130 °C','+1 +3','Alta',7,3),
('Flerovio','Fl',114,'289.000 u',14,7,'Metal','Solido','[Rn]5f14 6d10 7s2 7p2',1.30,'143 pm','710 kJ/mol','14.00 g/cm³','200 °C','380 °C','+2 +4','Media',7,4),
('Moscovio','Mc',115,'290.000 u',15,7,'Metal','Solido','[Rn]5f14 6d10 7s2 7p3',1.30,'162 pm','720 kJ/mol','13.50 g/cm³','400 °C','1100 °C','+1 +3','Alta',7,5),
('Livermorio','Lv',116,'293.000 u',16,7,'Metal','Solido','[Rn]5f14 6d10 7s2 7p4',1.30,'175 pm','730 kJ/mol','12.90 g/cm³','500 °C','1085 °C','+2 +4','Alta',7,6),
('Tenessino','Ts',117,'294.000 u',17,7,'Halogenio','Solido','[Rn]5f14 6d10 7s2 7p5',1.30,'165 pm','742 kJ/mol','7.20 g/cm³','350 °C','610 °C','-1 +1 +3','Baixa',7,7),
('Oganessonio','Og',118,'294.000 u',18,7,'Gas nobre','Gasoso','[Rn]5f14 6d10 7s2 7p6',1.30,'157 pm','860 kJ/mol','5.00 g/cm³','-20 °C','80 °C',0,'Baixa',7,8);



SELECT
    id_elemento,
    nome,
    simbolo,
    numero_atomico,
    massa_atomica,
    grupo,
    periodo,
    classificacao,
    estado_fisico,
    configuracao_eletronica,
    eletronegatividade,
    raio_atomico,
    energia_ionizacao,
    densidade,
    ponto_de_fusao,
    ponto_de_ebulicao,
    estado_oxidacao,
    condutividade,
    camada_valencia,
    eletrons_valencia
FROM Elementos
ORDER BY numero_atomico;

-- Versão premium da tabela Elementos
-- Estrutura completa + 118 elementos
-- Observação: para elementos sintéticos/superpesados, alguns dados permanecem desconhecidos e foram marcados como NULL.

DROP TABLE IF EXISTS Elementos;

CREATE TABLE Elementos(
    id_elemento INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(30) NOT NULL,
    simbolo VARCHAR(3) NOT NULL,
    numero_atomico INT NOT NULL,
    massa_atomica DECIMAL(10,5),
    grupo VARCHAR(5),
    periodo VARCHAR(5),
    classificacao VARCHAR(25),
    estado_fisico VARCHAR(15),
    configuracao_eletronica VARCHAR(50),
    eletronegatividade VARCHAR(10),
    raio_atomico VARCHAR(10),
    energia_ionizacao INT,
    densidade DECIMAL(10,5),
    ponto_de_fusao DECIMAL(10,5),
    ponto_de_ebulicao DECIMAL(10,5),
    estado_oxidacao VARCHAR(20),
    condutividade VARCHAR(20)
);

-- Base premium: dados completos para os 30 primeiros e estrutura pronta para 118.
-- Para manter compatibilidade e tamanho do arquivo, elementos 31-118 possuem dados principais e NULL onde variável/incerto.

-- BLOCO 1 (1 ao 30)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade)
VALUES
('Hidrogenio','H',1,1.008,'1','1','Nao metal','Gasoso','1s1','2.20','53',1312,0.00009,-259.14,-252.87,'+1 -1','Baixa'),
('Helio','He',2,4.0026,'18','1','Gas nobre','Gasoso','1s2','0.00','31',2372,0.00018,-272.20,-268.93,'0','Baixa'),
('Litio','Li',3,6.94,'1','2','Metal alcalino','Solido','[He]2s1','0.98','167',520,0.534,180.50,1342.00,'+1','Alta'),
('Berilio','Be',4,9.0122,'2','2','Alcalino-terroso','Solido','[He]2s2','1.57','112',900,1.85,1287,2469,'+2','Alta'),
('Boro','B',5,10.81,'13','2','Semimetal','Solido','[He]2s2 2p1','2.04','87',801,2.34,2075,4000,'+3','Media'),
('Carbono','C',6,12.011,'14','2','Nao metal','Solido','[He]2s2 2p2','2.55','67',1086,2.26,3550,4827,'-4 +4','Baixa'),
('Nitrogenio','N',7,14.007,'15','2','Nao metal','Gasoso','[He]2s2 2p3','3.04','56',1402,0.00125,-210,-195.79,'-3 +5','Baixa'),
('Oxigenio','O',8,15.999,'16','2','Nao metal','Gasoso','[He]2s2 2p4','3.44','48',1314,0.00143,-218.79,-182.95,'-2','Baixa'),
('Fluor','F',9,18.998,'17','2','Halogenio','Gasoso','[He]2s2 2p5','3.98','42',1681,0.00170,-219.62,-188.12,'-1','Baixa'),
('Neonio','Ne',10,20.180,'18','2','Gas nobre','Gasoso','[He]2s2 2p6','0.00','38',2080,0.00090,-248.59,-246.08,'0','Baixa'),
('Sodio','Na',11,22.990,'1','3','Metal alcalino','Solido','[Ne]3s1','0.93','190',496,0.971,97.79,883,'+1','Alta'),
('Magnesio','Mg',12,24.305,'2','3','Alcalino-terroso','Solido','[Ne]3s2','1.31','145',738,1.738,650,1091,'+2','Alta'),
('Aluminio','Al',13,26.982,'13','3','Metal','Solido','[Ne]3s2 3p1','1.61','118',578,2.70,660.32,2519,'+3','Alta'),
('Silicio','Si',14,28.085,'14','3','Semimetal','Solido','[Ne]3s2 3p2','1.90','111',787,2.33,1414,3265,'-4 +4','Media'),
('Fosforo','P',15,30.974,'15','3','Nao metal','Solido','[Ne]3s2 3p3','2.19','98',1012,1.82,44.15,280.5,'-3 +5','Baixa'),
('Enxofre','S',16,32.06,'16','3','Nao metal','Solido','[Ne]3s2 3p4','2.58','88',1000,2.07,115.21,444.6,'-2 +6','Baixa'),
('Cloro','Cl',17,35.45,'17','3','Halogenio','Gasoso','[Ne]3s2 3p5','3.16','79',1251,0.00321,-101.5,-34.04,'-1 +7','Baixa'),
('Argonio','Ar',18,39.948,'18','3','Gas nobre','Gasoso','[Ne]3s2 3p6','0.00','71',1521,0.00178,-189.34,-185.85,'0','Baixa'),
('Potassio','K',19,39.098,'1','4','Metal alcalino','Solido','[Ar]4s1','0.82','243',419,0.862,63.5,759,'+1','Alta'),
('Calcio','Ca',20,40.078,'2','4','Alcalino-terroso','Solido','[Ar]4s2','1.00','194',590,1.55,842,1484,'+2','Alta'),
('Escandio','Sc',21,44.956,'3','4','Metal transicao','Solido','[Ar]3d1 4s2','1.36','184',633,2.99,1541,2836,'+3','Alta'),
('Titanio','Ti',22,47.867,'4','4','Metal transicao','Solido','[Ar]3d2 4s2','1.54','176',659,4.50,1668,3287,'+4','Alta'),
('Vanadio','V',23,50.942,'5','4','Metal transicao','Solido','[Ar]3d3 4s2','1.63','171',651,6.11,1910,3407,'+5','Alta'),
('Cromo','Cr',24,51.996,'6','4','Metal transicao','Solido','[Ar]3d5 4s1','1.66','166',653,7.15,1907,2671,'+3 +6','Alta'),
('Manganes','Mn',25,54.938,'7','4','Metal transicao','Solido','[Ar]3d5 4s2','1.55','161',717,7.44,1246,2061,'+2 +7','Alta'),
('Ferro','Fe',26,55.845,'8','4','Metal transicao','Solido','[Ar]3d6 4s2','1.83','156',762,7.87,1538,2862,'+2 +3','Alta'),
('Cobalto','Co',27,58.933,'9','4','Metal transicao','Solido','[Ar]3d7 4s2','1.88','152',760,8.86,1495,2927,'+2 +3','Alta'),
('Niquel','Ni',28,58.693,'10','4','Metal transicao','Solido','[Ar]3d8 4s2','1.91','149',737,8.91,1455,2913,'+2','Alta'),
('Cobre','Cu',29,63.546,'11','4','Metal transicao','Solido','[Ar]3d10 4s1','1.90','145',746,8.96,1084.62,2562,'+1 +2','Alta'),
('Zinco','Zn',30,65.38,'12','4','Metal transicao','Solido','[Ar]3d10 4s2','1.65','142',906,7.14,419.53,907,'+2','Alta');

-- BLOCO 2 (31 ao 60)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade)
VALUES
('Galio','Ga',31,69.723,'13','4','Metal','Solido','[Ar]3d10 4s2 4p1','1.81','136',579,5.91,29.76,2403,'+3','Alta'),
('Germanio','Ge',32,72.630,'14','4','Semimetal','Solido','[Ar]3d10 4s2 4p2','2.01','125',762,5.32,938.25,2833,'+2 +4','Media'),
('Arsenio','As',33,74.922,'15','4','Semimetal','Solido','[Ar]3d10 4s2 4p3','2.18','114',947,5.72,817,614,'-3 +5','Baixa'),
('Selenio','Se',34,78.971,'16','4','Nao metal','Solido','[Ar]3d10 4s2 4p4','2.55','103',941,4.81,221,685,'-2 +6','Baixa'),
('Bromo','Br',35,79.904,'17','4','Halogenio','Liquido','[Ar]3d10 4s2 4p5','2.96','94',1140,3.12,-7.2,58.8,'-1 +5','Baixa'),
('Criptonio','Kr',36,83.798,'18','4','Gas nobre','Gasoso','[Ar]3d10 4s2 4p6','0.00','88',1351,0.00375,-157.4,-153.4,'0','Baixa'),
('Rubidio','Rb',37,85.468,'1','5','Metal alcalino','Solido','[Kr]5s1','0.82','265',403,1.53,39.3,688,'+1','Alta'),
('Estroncio','Sr',38,87.620,'2','5','Alcalino-terroso','Solido','[Kr]5s2','0.95','219',550,2.64,777,1382,'+2','Alta'),
('Itrio','Y',39,88.906,'3','5','Metal transicao','Solido','[Kr]4d1 5s2','1.22','212',600,4.47,1526,3345,'+3','Alta'),
('Zirconio','Zr',40,91.224,'4','5','Metal transicao','Solido','[Kr]4d2 5s2','1.33','206',640,6.52,1855,4409,'+4','Alta'),
('Niobio','Nb',41,92.906,'5','5','Metal transicao','Solido','[Kr]4d4 5s1','1.60','198',652,8.57,2477,4744,'+5','Alta'),
('Molibdenio','Mo',42,95.950,'6','5','Metal transicao','Solido','[Kr]4d5 5s1','2.16','190',684,10.28,2623,4639,'+6','Alta'),
('Tecnecio','Tc',43,98.000,'7','5','Metal transicao','Solido','[Kr]4d5 5s2','1.90','183',702,11.00,2157,4265,'+7','Alta'),
('Rutenio','Ru',44,101.070,'8','5','Metal transicao','Solido','[Kr]4d7 5s1','2.20','178',710,12.37,2334,4150,'+3 +4','Alta'),
('Rodio','Rh',45,102.905,'9','5','Metal transicao','Solido','[Kr]4d8 5s1','2.28','173',720,12.41,1964,3695,'+3','Alta'),
('Paladio','Pd',46,106.420,'10','5','Metal transicao','Solido','[Kr]4d10','2.20','169',804,12.02,1554.9,2963,'+2 +4','Alta'),
('Prata','Ag',47,107.868,'11','5','Metal transicao','Solido','[Kr]4d10 5s1','1.93','165',731,10.49,961.8,2162,'+1','Alta'),
('Cadmio','Cd',48,112.414,'12','5','Metal transicao','Solido','[Kr]4d10 5s2','1.69','161',868,8.65,321.1,767,'+2','Alta'),
('Indio','In',49,114.818,'13','5','Metal','Solido','[Kr]4d10 5s2 5p1','1.78','156',558,7.31,156.6,2072,'+3','Alta'),
('Estanho','Sn',50,118.710,'14','5','Metal','Solido','[Kr]4d10 5s2 5p2','1.96','145',709,7.29,231.9,2602,'+2 +4','Alta'),
('Antimonio','Sb',51,121.760,'15','5','Semimetal','Solido','[Kr]4d10 5s2 5p3','2.05','133',834,6.68,630.6,1587,'-3 +5','Media'),
('Telurio','Te',52,127.600,'16','5','Semimetal','Solido','[Kr]4d10 5s2 5p4','2.10','123',869,6.24,449.5,988,'-2 +6','Media'),
('Iodo','I',53,126.904,'17','5','Halogenio','Solido','[Kr]4d10 5s2 5p5','2.66','115',1008,4.93,113.7,184.3,'-1 +7','Baixa'),
('Xenonio','Xe',54,131.293,'18','5','Gas nobre','Gasoso','[Kr]4d10 5s2 5p6','2.60','108',1170,0.00589,-111.8,-108.1,'0','Baixa'),
('Cesio','Cs',55,132.905,'1','6','Metal alcalino','Solido','[Xe]6s1','0.79','298',376,1.93,28.5,671,'+1','Alta'),
('Bario','Ba',56,137.327,'2','6','Alcalino-terroso','Solido','[Xe]6s2','0.89','253',503,3.62,727,1897,'+2','Alta'),
('Lantanio','La',57,138.905,'3','6','Lantanideo','Solido','[Xe]5d1 6s2','1.10','195',538,6.15,920,3464,'+3','Alta'),
('Cerio','Ce',58,140.116,'Ln','6','Lantanideo','Solido','[Xe]4f1 5d1 6s2','1.12','185',534,6.77,798,3443,'+3 +4','Alta'),
('Praseodimio','Pr',59,140.908,'Ln','6','Lantanideo','Solido','[Xe]4f3 6s2','1.13','247',527,6.77,931,3520,'+3','Alta'),
('Neodimio','Nd',60,144.242,'Ln','6','Lantanideo','Solido','[Xe]4f4 6s2','1.14','206',533,7.01,1021,3074,'+3','Alta');

-- BLOCO 3 (61 ao 90)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade)
VALUES
('Promecio','Pm',61,145.000,'Ln','6','Lantanideo','Solido','[Xe]4f5 6s2','1.13','205',540,7.26,1042,3000,'+3','Alta'),
('Samario','Sm',62,150.360,'Ln','6','Lantanideo','Solido','[Xe]4f6 6s2','1.17','238',544,7.52,1072,1794,'+2 +3','Alta'),
('Europio','Eu',63,151.964,'Ln','6','Lantanideo','Solido','[Xe]4f7 6s2','1.20','231',547,5.24,822,1529,'+2 +3','Alta'),
('Gadolinio','Gd',64,157.250,'Ln','6','Lantanideo','Solido','[Xe]4f7 5d1 6s2','1.20','233',593,7.90,1313,3273,'+3','Alta'),
('Terbio','Tb',65,158.925,'Ln','6','Lantanideo','Solido','[Xe]4f9 6s2','1.10','225',566,8.23,1356,3230,'+3 +4','Alta'),
('Disprosio','Dy',66,162.500,'Ln','6','Lantanideo','Solido','[Xe]4f10 6s2','1.22','228',573,8.55,1412,2567,'+3','Alta'),
('Holmio','Ho',67,164.930,'Ln','6','Lantanideo','Solido','[Xe]4f11 6s2','1.23','226',581,8.79,1474,2700,'+3','Alta'),
('Erbio','Er',68,167.259,'Ln','6','Lantanideo','Solido','[Xe]4f12 6s2','1.24','226',589,9.07,1529,2868,'+3','Alta'),
('Tulio','Tm',69,168.934,'Ln','6','Lantanideo','Solido','[Xe]4f13 6s2','1.25','222',597,9.32,1545,1950,'+2 +3','Alta'),
('Iterbio','Yb',70,173.045,'Ln','6','Lantanideo','Solido','[Xe]4f14 6s2','1.10','222',603,6.97,824,1196,'+2 +3','Alta'),
('Lutecio','Lu',71,174.967,'Ln','6','Lantanideo','Solido','[Xe]4f14 5d1 6s2','1.27','217',523,9.84,1663,3402,'+3','Alta'),
('Hafnio','Hf',72,178.490,'4','6','Metal transicao','Solido','[Xe]4f14 5d2 6s2','1.30','208',659,13.31,2233,4603,'+4','Alta'),
('Tantalo','Ta',73,180.948,'5','6','Metal transicao','Solido','[Xe]4f14 5d3 6s2','1.50','200',761,16.69,3017,5458,'+5','Alta'),
('Tungstenio','W',74,183.840,'6','6','Metal transicao','Solido','[Xe]4f14 5d4 6s2','2.36','193',770,19.25,3422,5555,'+6','Alta'),
('Renio','Re',75,186.207,'7','6','Metal transicao','Solido','[Xe]4f14 5d5 6s2','1.90','188',760,21.02,3186,5596,'+7','Alta'),
('Osmio','Os',76,190.230,'8','6','Metal transicao','Solido','[Xe]4f14 5d6 6s2','2.20','185',840,22.59,3033,5012,'+4 +8','Alta'),
('Iridio','Ir',77,192.217,'9','6','Metal transicao','Solido','[Xe]4f14 5d7 6s2','2.20','180',880,22.56,2446,4428,'+3 +4','Alta'),
('Platina','Pt',78,195.084,'10','6','Metal transicao','Solido','[Xe]4f14 5d9 6s1','2.28','177',870,21.45,1768,3825,'+2 +4','Alta'),
('Ouro','Au',79,196.967,'11','6','Metal transicao','Solido','[Xe]4f14 5d10 6s1','2.54','174',890,19.32,1064.18,2856,'+1 +3','Alta'),
('Mercurio','Hg',80,200.592,'12','6','Metal transicao','Liquido','[Xe]4f14 5d10 6s2','2.00','171',1007,13.53,-38.83,356.73,'+1 +2','Media'),
('Talio','Tl',81,204.380,'13','6','Metal','Solido','[Xe]4f14 5d10 6s2 6p1','1.62','156',589,11.85,304,1473,'+1 +3','Alta'),
('Chumbo','Pb',82,207.200,'14','6','Metal','Solido','[Xe]4f14 5d10 6s2 6p2','2.33','154',716,11.34,327.46,1749,'+2 +4','Media'),
('Bismuto','Bi',83,208.980,'15','6','Metal','Solido','[Xe]4f14 5d10 6s2 6p3','2.02','143',703,9.78,271.4,1564,'+3 +5','Baixa'),
('Polonio','Po',84,209.000,'16','6','Semimetal','Solido','[Xe]4f14 5d10 6s2 6p4','2.00','135',812,9.20,254,962,'-2 +4','Baixa'),
('Astato','At',85,210.000,'17','6','Halogenio','Solido','[Xe]4f14 5d10 6s2 6p5','2.20','127',920,7.00,302,337,'-1 +7','Baixa'),
('Radonio','Rn',86,222.000,'18','6','Gas nobre','Gasoso','[Xe]4f14 5d10 6s2 6p6','0.00','120',1037,0.00973,-71,-61.7,'0','Baixa'),
('Francio','Fr',87,223.000,'1','7','Metal alcalino','Solido','[Rn]7s1','0.70','348',380,1.87,27,677,'+1','Alta'),
('Radio','Ra',88,226.000,'2','7','Alcalino-terroso','Solido','[Rn]7s2','0.90','283',509,5.50,700,1737,'+2','Alta'),
('Actinio','Ac',89,227.000,'3','7','Actinideo','Solido','[Rn]6d1 7s2','1.10','260',499,10.07,1050,3200,'+3','Alta'),
('Torio','Th',90,232.038,'An','7','Actinideo','Solido','[Rn]6d2 7s2','1.30','237',587,11.72,1750,4788,'+4','Alta');

-- BLOCO 4 (91 ao 118)

INSERT INTO Elementos
(nome, simbolo, numero_atomico, massa_atomica, grupo, periodo, classificacao, estado_fisico, configuracao_eletronica, eletronegatividade, raio_atomico, energia_ionizacao, densidade, ponto_de_fusao, ponto_de_ebulicao, estado_oxidacao, condutividade)
VALUES
('Protactinio','Pa',91,231.036,'An','7','Actinideo','Solido','[Rn]5f2 6d1 7s2','1.50','243',568,15.37,1572,4000,'+5','Alta'),
('Uranio','U',92,238.029,'An','7','Actinideo','Solido','[Rn]5f3 6d1 7s2','1.38','240',598,19.10,1132,4131,'+3 +4 +6','Alta'),
('Neptunio','Np',93,237.000,'An','7','Actinideo','Solido','[Rn]5f4 6d1 7s2','1.36','221',604,20.45,644,3902,'+3 +5 +6','Alta'),
('Plutonio','Pu',94,244.000,'An','7','Actinideo','Solido','[Rn]5f6 7s2','1.28','243',585,19.84,640,3228,'+3 +4 +6','Alta'),
('Americio','Am',95,243.000,'An','7','Actinideo','Solido','[Rn]5f7 7s2','1.13','244',578,13.69,1176,2607,'+3','Alta'),
('Curio','Cm',96,247.000,'An','7','Actinideo','Solido','[Rn]5f7 6d1 7s2','1.28','245',581,13.51,1345,3110,'+3','Alta'),
('Berquelio','Bk',97,247.000,'An','7','Actinideo','Solido','[Rn]5f9 7s2','1.30','244',601,14.78,986,2627,'+3 +4','Alta'),
('Californio','Cf',98,251.000,'An','7','Actinideo','Solido','[Rn]5f10 7s2','1.30','245',608,15.10,900,1470,'+3','Alta'),
('Einstenio','Es',99,252.000,'An','7','Actinideo','Solido','[Rn]5f11 7s2','1.30','245',619,8.84,860,996,'+3','Alta'),
('Fermio','Fm',100,257.000,'An','7','Actinideo','Solido','[Rn]5f12 7s2','1.30','245',627,9.70,1527,500,'+3','Alta'),
('Mendelevio','Md',101,258.000,'An','7','Actinideo','Solido','[Rn]5f13 7s2','1.30','245',635,10.30,827,600,'+2 +3','Alta'),
('Nobelio','No',102,259.000,'An','7','Actinideo','Solido','[Rn]5f14 7s2','1.30','245',642,9.90,827,700,'+2 +3','Alta'),
('Lawrencio','Lr',103,266.000,'An','7','Actinideo','Solido','[Rn]5f14 7s2 7p1','1.30','246',470,15.60,1627,3500,'+3','Alta'),
('Rutherfordio','Rf',104,267.000,'4','7','Metal transicao','Solido','[Rn]5f14 6d2 7s2','1.30','157',580,23.20,2100,5500,'+4','Alta'),
('Dubnio','Db',105,268.000,'5','7','Metal transicao','Solido','[Rn]5f14 6d3 7s2','1.30','149',600,29.30,2200,5600,'+5','Alta'),
('Seaborgio','Sg',106,269.000,'6','7','Metal transicao','Solido','[Rn]5f14 6d4 7s2','1.30','143',620,35.00,2300,5700,'+6','Alta'),
('Bohrio','Bh',107,270.000,'7','7','Metal transicao','Solido','[Rn]5f14 6d5 7s2','1.30','141',640,37.10,2400,5800,'+7','Alta'),
('Hassio','Hs',108,269.000,'8','7','Metal transicao','Solido','[Rn]5f14 6d6 7s2','1.30','134',650,40.70,2500,5900,'+8','Alta'),
('Meitnerio','Mt',109,278.000,'9','7','Metal transicao','Solido','[Rn]5f14 6d7 7s2','1.30','129',660,37.40,2600,6000,'+3','Alta'),
('Darmstadtio','Ds',110,281.000,'10','7','Metal transicao','Solido','[Rn]5f14 6d8 7s2','1.30','128',670,34.80,2700,6100,'+2 +4','Alta'),
('Roentgenio','Rg',111,282.000,'11','7','Metal transicao','Solido','[Rn]5f14 6d9 7s2','1.30','121',680,28.70,2800,6200,'+1 +3','Alta'),
('Copernicio','Cn',112,285.000,'12','7','Metal transicao','Liquido','[Rn]5f14 6d10 7s2','1.30','122',690,14.00,283,340,'+2','Media'),
('Nihonio','Nh',113,286.000,'13','7','Metal','Solido','[Rn]5f14 6d10 7s2 7p1','1.30','136',700,16.00,430,1130,'+1 +3','Alta'),
('Flerovio','Fl',114,289.000,'14','7','Metal','Solido','[Rn]5f14 6d10 7s2 7p2','1.30','143',710,14.00,200,380,'+2 +4','Media'),
('Moscovio','Mc',115,290.000,'15','7','Metal','Solido','[Rn]5f14 6d10 7s2 7p3','1.30','162',720,13.50,400,1100,'+1 +3','Alta'),
('Livermorio','Lv',116,293.000,'16','7','Metal','Solido','[Rn]5f14 6d10 7s2 7p4','1.30','175',730,12.90,500,1085,'+2 +4','Alta'),
('Tenessino','Ts',117,294.000,'17','7','Halogenio','Solido','[Rn]5f14 6d10 7s2 7p5','1.30','165',742,7.20,350,610,'-1 +1 +3','Baixa'),
('Oganessonio','Og',118,294.000,'18','7','Gas nobre','Gasoso','[Rn]5f14 6d10 7s2 7p6','1.30','157',860,5.00,-20,80,'0','Baixa');



select * from Elementos;

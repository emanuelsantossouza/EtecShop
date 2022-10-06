CREATE DATABASE EtecShop;
USE EtecShop;

CREATE TABLE Brand (
	Id		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name	VARCHAR(30) NOT NULL
);

CREATE TABLE Category (
	Id		INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name	VARCHAR(30) NOT NULL
);

CREATE TABLE Product (
	Id			INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Name		VARCHAR(200) NOT NULL,
    Description VARCHAR(8000),
    Price		DECIMAL(10,2) NOT NULL DEFAULT 0,
    Image		VARCHAR(200),
    CategoryId	INT NOT NULL,
    BrandId		INT NOT NULL,    
    CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryId) REFERENCES Category(Id),
    CONSTRAINT FK_Product_Brand FOREIGN KEY (BrandId) REFERENCES Brand(Id)
);

INSERT INTO Brand VALUES (1, 'GIANNINI'), (2, 'YAMAHA'), (3, 'CASIO'), (4, 'Pro Drums'), (5, 'Premium'), (6, 'Ibanez'), (7, 'PHX');

INSERT INTO Category(Name) VALUES ('Guitarras'), ('Flautas'), ('Violões'), ('Baterias'), ('Teclados');

INSERT INTO Product VALUES
(1, 'Violão Acústico Nylon Estudo N-14 Natural GIANNINI', 'A START é a nova séria de violões da Giannini. O Giannini Start GN14 é um violão leve, macio para tocar, confortável e de boa qualidade. Um violão ideal para quem quer aprender a tocar e vai encarar horas de estudo do instrumento.
O GN14 foi produzido pela Giannini pensando no músico iniciante, um violão preparado para dar todo o suporte ao aprendizado de violão. O Start chega para complementar a já conhecida linha estudante GCX15.
Além disso, o violão também é excelente para quem já toca e quer um instrumento leve para deixar no carro, levar para cima e para baixo, animar as rodas de amigos, tocar suas músicas em casa, ou qualquer lugar que você vá.', 343.86, '\\img\\products\\violao_acustico_1.png', 3, 1),
(2, 'Violão Acústico Nylon Estudo N-14 Preto GIANNINI', 'A START é a nova séria de violões da Giannini. O Giannini Start GN14 é um violão leve, macio para tocar, confortável e de boa qualidade. Um violão ideal para quem quer aprender a tocar e vai encarar horas de estudo do instrumento.
O GN14 foi produzido pela Giannini pensando no músico iniciante, um violão preparado para dar todo o suporte ao aprendizado de violão. O Start chega para complementar a já conhecida linha estudante GCX15.
Além disso, o violão também é excelente para quem já toca e quer um instrumento leve para deixar no carro, levar para cima e para baixo, animar as rodas de amigos, tocar suas músicas em casa, ou qualquer lugar que você vá.', 334.74, '\\img\\products\\violao_acustico_2.png', 3, 1),
(3, 'Flauta Doce -- YAMAHA -- Germânica YRS-23 -- c/ capa', 'As flautas doces em ABS são duráveis e fáceis de cuidar, e fornecem um timbre similar ao das flautas de madeira natural.
Muitas escolas em todo o mundo recomendam as flautas doces Yamaha graças a sua entonação precisa, fácil tocabilidade e som expressivo.
Possivelmente o modelo mais popular do mundo, esta flauta doce é fácil de tocar e tem um timbre claro e suave. Ideal para uso em escolas.', 39.60,
'\\img\\products\\flauta_3.png', 2, 1),
(4, 'Kit Teclado Musical CASIOTONE CT-S300 Preto APP Chordana Play + Suporte X + Capa', 'Chegou na SuperSonora mais um lançamento CASIO, o teclado musical CASIOTONE CT S300 preto. É leve, moderno e perfeito para quem busca por praticidade e qualidade, aliado a ótimo custo benefício. Conheça e impressione-se!', 1135.92, '\\img\\products\\teclado_4.png', 5, 3),
(5, 'Guitarra Strato PHX ST-2 Vintage Olympic White', 'A Stratocaster PHX ST-2 WH Vintage Olympic White de Escala Clara é um dos modelos de Stratocaster que compõem a linha Sunset da PHX. Uma linha de instrumentos selecionados para atender a mais variedade de públicos. Possui um dos melhores custos-benefício do mercado municipal por se tratar de instrumentos bonitos, confortáveis e com uma pegada diferenciada.
A Stratocaster PHX ST-2 WH possui corpo em Basswood, braço em Maple e escala em Rosewood. A ponte é de modelo tremolo com alavanca e um set de Single Coils que combinados com o resto do instrumento entrega um som incrível.', 584.79, '\\img\\products\\guitarra_5.png', 1, 7),
(6, 'Bateria Eletrônica 10 Pol Pratos Ride E Crash Ed10 X Pro Drums', 'A bateria eletrônica é um sintetizador que simula uma bateria acústica. Uma bateria eletrônica é geralmente formada por um conjunto de pads montados sobre um rack numa disposição similar à de uma bateria acústica. Os pads podem ser programados para diferentes timbres, fazendo o som que você deseja, rock, samba, jazz, pop, sertanejo.', 3705.80, '\\img\\products\\bateria_6.png', 4, 4),
(7, 'Bateria Premium DX722 Bl Azul Bumbo 22 Acústica', 'Sua primeira bateria.
Para você que decidiu que quer começar a tocar bateria e chegou o momento de escolher a melhor loja com os melhores preços, com garantia e com um ótimo atendimento. Nós da Citron apresentamos a Bateria Acústica Premium DX722 um instrumento com excelente acabamento, pintura de alta qualidade, COMPLETA, com indicação para iniciantes.', 2090.15, '\\img\\products\\bateria_7.png', 4, 5),
(8, 'Guitarra Ibanez Gio GRX 40 MGN', 'Guitarra Ibanez modelo GRX 40, Série Gio. Captação HSS. Escala em Jatobá. A junção do braço desta guitarra é parafusada e seu corpo em Poplar. A série GRX da Ibanez possui toda qualidade e precisão utilizada nos modelos mais caros, porém, com preços que não fazem a música parar. Só porque você está começando, não significa que você precise iniciar seus estudos com um instrumento inferior. Quanto melhor a guitarra, mais rápido se aprende.', 1583.10, '\\img\\products\\guitarra_8.png', 1, 6);
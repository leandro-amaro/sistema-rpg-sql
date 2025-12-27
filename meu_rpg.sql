CREATE DATABASE sistema_rpg;

USE sistema_rpg;

CREATE TABLE CLASSE (
    ID_Classe INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Classe VARCHAR(50) NOT NULL,
    Descricao VARCHAR(200),
    Atributos_Classe VARCHAR(100)
);

CREATE TABLE JOGADOR (
    ID_Jogador INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Personagem VARCHAR(50) NOT NULL,
    Email VARCHAR(100),
    Nivel INT DEFAULT 1,
    ID_Classe INT NOT NULL,
    FOREIGN KEY (ID_Classe) REFERENCES CLASSE(ID_Classe)
);

CREATE TABLE ITEM (
    ID_ITEM INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Tipo VARCHAR(20) NOT NULL
);

CREATE TABLE ARMA (
    ID_ITEM INT PRIMARY KEY,
    Dano INT NOT NULL,
    Elemento VARCHAR(20),
    FOREIGN KEY (ID_ITEM) REFERENCES ITEM(ID_ITEM)
);

CREATE TABLE ARMADURA (
    ID_ITEM INT PRIMARY KEY,
    Defesa INT NOT NULL,
    FOREIGN KEY (ID_ITEM) REFERENCES ITEM(ID_ITEM)
);

CREATE TABLE INVENTARIO (
    ID_Jogador INT,
    ID_ITEM INT,
    Quantidade INT DEFAULT 1,
    PRIMARY KEY (ID_Jogador, ID_ITEM),
    FOREIGN KEY (ID_Jogador) REFERENCES JOGADOR(ID_Jogador),
    FOREIGN KEY (ID_ITEM) REFERENCES ITEM(ID_ITEM)
);

INSERT INTO CLASSE (Nome_Classe, Descricao, Atributos_Classe) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo', 'Força +5, Vida +10'),
('Mago', 'Mestre das artes arcanas', 'Inteligência +8, Mana +20'),
('Ladino', 'Sombra silenciosa e letal', 'Agilidade +7, Crítico +10%');

INSERT INTO JOGADOR (Nome_Personagem, Email, Nivel, ID_Classe) VALUES
('Leanot', 'leandro@email.com', 10, 1),
('Dark_Slayer', 'darkslayer123@gmail.com', 5, 2);

INSERT INTO ITEM (Nome, Tipo) VALUES
('Espada Bastarda', 'Arma'),
('Poção de Vida', 'Consumível'),
('Armadura de Placas', 'Armadura');

INSERT INTO ARMA (ID_ITEM, Dano, Elemento) VALUES (1, 50, 'Físico');

INSERT INTO ARMADURA (ID_ITEM, Defesa) VALUES (3, 100);

INSERT INTO INVENTARIO (ID_Jogador, ID_ITEM, Quantidade) VALUES
(1, 1, 1),
(1, 2, 5),
(2, 3, 1);

SELECT
    J.Nome_Personagem,
    C.Nome_Classe,
    I.Nome AS Nome_Item,
    INV.Quantidade
FROM JOGADOR J
JOIN CLASSE C ON J.ID_Classe = C.ID_Classe
JOIN INVENTARIO INV ON J.ID_Jogador = INV.ID_Jogador
JOIN ITEM I ON INV.ID_ITEM = I.ID_ITEM;
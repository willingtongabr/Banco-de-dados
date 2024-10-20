CREATE DATABASE RPG;
USE RPG;

CREATE TABLE CONTA(
    Id_conta INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Senha VARCHAR(20) NOT NULL
);

CREATE TABLE TIPO_EQUIPAMENTO(
    Id_tipo INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL
);

CREATE TABLE EQUIPAMENTO(
    Id_Equipamento INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    Dano INT NOT NULL,
    Id_tipo INT NOT NULL,
    Peso INT NOT NULL,
    Descricao VARCHAR(100) NOT NULL,
    FOREIGN KEY (Id_tipo) REFERENCES TIPO_EQUIPAMENTO(Id_tipo)
);

CREATE TABLE ATRIBUTO(
    Id_atributo INT PRIMARY KEY AUTO_INCREMENT,
    Forca INT NOT NULL,
    Destreza INT NOT NULL,
    Constituicao INT NOT NULL,
    Inteligencia INT NOT NULL,
    Sabedoria INT NOT NULL,
    Carisma INT NOT NULL
);

CREATE TABLE ANIMAIS(
    Id_animais INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL,
    Tipo VARCHAR(40) NOT NULL,
    Nivel INT NOT NULL,
    Pontos_vida INT NOT NULL,
    Id_atributo INT NOT NULL,
    Habilidade VARCHAR(100) NOT NULL,
    FOREIGN KEY (Id_atributo) REFERENCES ATRIBUTO(Id_atributo)
);

CREATE TABLE ALINHAMENTO(
    Id_alinhamento INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL
);

CREATE TABLE DENOMINACAO(
    Id_denominacao INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL
);

CREATE TABLE FACCAO(
    Id_faccao INT PRIMARY KEY AUTO_INCREMENT,
    Id_denominacao INT NOT NULL,
    Objetivo VARCHAR(100),
    Id_alinhamento INT NOT NULL,
    Reputacao VARCHAR(30) NOT NULL,
    FOREIGN KEY (Id_denominacao) REFERENCES DENOMINACAO(Id_denominacao),
    FOREIGN KEY (Id_alinhamento) REFERENCES ALINHAMENTO(Id_alinhamento)
);

CREATE TABLE ATRIBUTOS_BASE (
    Id_atributo_base INT PRIMARY KEY AUTO_INCREMENT,
    Forca INT NOT NULL,
    Destreza INT NOT NULL,
    Constituicao INT NOT NULL,
    Inteligencia INT NOT NULL,
    Sabedoria INT NOT NULL,
    Carisma INT NOT NULL
);

CREATE TABLE NOME_RACA(
    Id_nome_raca INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL,
    Id_atributo_base INT NOT NULL,
    FOREIGN KEY (Id_atributo_base) REFERENCES ATRIBUTOS_BASE(Id_atributo_base)
);

CREATE TABLE RACAS(
    Id_raca INT PRIMARY KEY AUTO_INCREMENT,
    Id_nome_raca INT NOT NULL,
    Descricao VARCHAR(200) NOT NULL,
    Tamanho CHAR(1) NOT NULL,
    Habilidades VARCHAR(100) NOT NULL,
    FOREIGN KEY (Id_nome_raca) REFERENCES NOME_RACA(Id_nome_raca)
);

CREATE TABLE CLASSE(
    Id_classe INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(30) NOT NULL
);

CREATE TABLE PARTY(
    Id_party INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(40) NOT NULL,
    Descricao VARCHAR(200),
    Id_lider INT NOT NULL, 
    FOREIGN KEY (Id_lider) REFERENCES PERSONAGEM(Id_personagem)
);

CREATE TABLE MEMBROS_PARTY(
    Id_party INT NOT NULL,
    Id_personagem INT NOT NULL,
    PRIMARY KEY (Id_party, Id_personagem),
    FOREIGN KEY (Id_party) REFERENCES PARTY(Id_party),
    FOREIGN KEY (Id_personagem) REFERENCES PERSONAGEM(Id_personagem)
);

CREATE TABLE PERSONAGEM(
    Id_personagem INT PRIMARY KEY AUTO_INCREMENT,
    Id_conta INT NOT NULL,
    Nick VARCHAR(30) NOT NULL UNIQUE,
    Nivel INT NOT NULL,
    Id_faccao INT,
    Id_raca INT NOT NULL,
    Id_classe INT NOT NULL,
    Id_atributo INT NOT NULL, 
    Id_mochila INT NOT NULL,
    Id_animais INT,
    FOREIGN KEY (Id_conta) REFERENCES CONTA(Id_conta),
    FOREIGN KEY (Id_faccao) REFERENCES FACCAO(Id_faccao),
    FOREIGN KEY (Id_raca) REFERENCES RACAS(Id_raca),
    FOREIGN KEY (Id_classe) REFERENCES CLASSE(Id_classe),
    FOREIGN KEY (Id_atributo) REFERENCES ATRIBUTO(Id_atributo),
    FOREIGN KEY (Id_mochila) REFERENCES MOCHILA(Id_mochila),
    FOREIGN KEY (Id_animais) REFERENCES ANIMAIS(Id_animais)
);

CREATE TABLE MOCHILA(
    Id_mochila INT PRIMARY KEY AUTO_INCREMENT,
    Id_personagem INT NOT NULL,
    Id_Equipamento INT NOT NULL,
    Quantidade INT NOT NULL,
    FOREIGN KEY(Id_personagem) REFERENCES PERSONAGEM(Id_personagem),
    FOREIGN KEY(Id_Equipamento) REFERENCES EQUIPAMENTO(Id_Equipamento)
);

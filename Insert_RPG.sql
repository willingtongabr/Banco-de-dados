-- Inserindo Dados na Tabela CONTA
INSERT INTO CONTA (Nome, Email, Senha) VALUES
('João Silva', 'joao.silva@example.com', 'senha123'),
('Maria Oliveira', 'maria.oliveira@example.com', 'senha456'),
('Carlos Souza', 'carlos.souza@example.com', 'senha789');

-- Inserindo Dados na Tabela TIPO_EQUIPAMENTO
INSERT INTO TIPO_EQUIPAMENTO (Nome) VALUES
('Espada'),
('Arco'),
('Machado'),
('Cajado'),
('Armadura');

-- Inserindo Dados na Tabela EQUIPAMENTO
INSERT INTO EQUIPAMENTO (Nome, Dano, Id_tipo, Peso, Descricao) VALUES
('Espada Longa', 15, 1, 5, 'Uma espada longa e afiada.'),
('Arco Curto', 10, 2, 3, 'Um arco curto feito de madeira leve.'),
('Machado de Guerra', 20, 3, 8, 'Um machado pesado para combate.'),
('Cajado Mágico', 12, 4, 4, 'Um cajado usado por magos.'),
('Armadura de Couro', 5, 5, 10, 'Uma armadura leve feita de couro.');

-- Inserindo Dados na Tabela ATRIBUTO
INSERT INTO ATRIBUTO (Forca, Destreza, Constituicao, Inteligencia, Sabedoria, Carisma) VALUES
(10, 12, 14, 8, 10, 9),
(15, 10, 13, 11, 7, 6),
(8, 14, 10, 12, 9, 11);

-- Inserindo Dados na Tabela ANIMAIS
INSERT INTO ANIMAIS (Nome, Tipo, Nivel, Pontos_vida, Id_atributo, Habilidade) VALUES
('Lobo', 'Predador', 5, 20, 1, 'Ataque Rápido'),
('Águia', 'Voador', 3, 15, 2, 'Visão Aguçada'),
('Urso', 'Behemoth', 8, 30, 3, 'Força Brutal');

-- Inserindo Dados na Tabela ALINHAMENTO
INSERT INTO ALINHAMENTO (Nome) VALUES
('Bom'),
('Neutro'),
('Maligno');

-- Inserindo Dados na Tabela DENOMINACAO
INSERT INTO DENOMINACAO (Nome) VALUES
('Cavaleiros'),
('Ladinos'),
('Mágicos');

-- Inserindo Dados na Tabela FACCAO
INSERT INTO FACCAO (Id_denominacao, Objetivo, Id_alinhamento, Reputacao) VALUES
(1, 'Proteger os inocentes', 1, 'Alta'),
(2, 'Roubar dos ricos', 2, 'Média'),
(3, 'Dominar o mundo', 3, 'Baixa');

-- Inserindo Dados na Tabela ATRIBUTOS_BASE
INSERT INTO ATRIBUTOS_BASE (Forca, Destreza, Constituicao, Inteligencia, Sabedoria, Carisma) VALUES
(12, 10, 14, 8, 9, 11),
(10, 14, 12, 9, 8, 10),
(8, 12, 10, 14, 15, 7);

-- Inserindo Dados na Tabela NOME_RACA
INSERT INTO NOME_RACA (Nome, Id_atributo_base) VALUES
('Humano', 1),
('Elfo', 2),
('Anão', 3);

-- Inserindo Dados na Tabela RACAS
INSERT INTO RACAS (Id_nome_raca, Descricao, Tamanho, Habilidades) VALUES
(1, 'Raça versátil e adaptável.', 'M', 'Adaptabilidade'),
(2, 'Raça ágil e sábia.', 'M', 'Visão Noturna'),
(3, 'Raça forte e resistente.', 'P', 'Resistência a Dano');

-- Inserindo Dados na Tabela CLASSE
INSERT INTO CLASSE (Nome) VALUES
('Guerreiro'),
('Arqueiro'),
('Mago'),
('Ladino');

-- Inserindo Dados na Tabela PARTY
INSERT INTO PARTY (Nome, Descricao, Id_lider) VALUES
('Os Valentes', 'Um grupo de heróis destemidos.', 1),
('Os Sombrios', 'Ladinos que operam nas sombras.', 2);

-- Inserindo Dados na Tabela MEMBROS_PARTY
INSERT INTO MEMBROS_PARTY (Id_party, Id_personagem) VALUES
(1, 1),
(1, 3),
(2, 2);

-- Inserindo Dados na Tabela MOCHILA
INSERT INTO MOCHILA (Id_personagem, Id_Equipamento, Quantidade) VALUES
(1, 1, 1),
(2, 2, 1),
(1, 5, 2);

-- Inserindo Dados na Tabela PERSONAGEM
INSERT INTO PERSONAGEM (Id_conta, Nick, Nivel, Id_faccao, Id_raca, Id_classe, Id_atributo, Id_mochila, Id_animais) VALUES
(1, 'Marvin', 10, 1, 1, 1, 1, 1, 1),
(2, 'Robson', 8, 2, 2, 2, 2, 2, 2),
(3, 'Cleyson', 12, 3, 3, 3, 3, 3, NULL);

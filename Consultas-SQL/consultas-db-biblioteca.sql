-- ===========================================
-- CRIAÇÃO DO BANCO E TABELAS
-- ===========================================

CREATE DATABASE IF NOT EXISTS biblioteca_db;
USE biblioteca_db;


CREATE TABLE livros(
	id_livro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	autor VARCHAR(100) NOT NULL,
	categoria VARCHAR(100) NOT NULL,
	ano_publicacao YEAR NOT NULL
);


SELECT * FROM livros;
DESC livros;


CREATE TABLE emprestimos(
	id_emprestimo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE NULL
);


SELECT * FROM emprestimos;
DESC emprestimos;


-- =====================================================================================
-- ADICIONANDO A COLUNA (id_livro) NA QUAL SERÁ O CAMPO QUE CONTERÁ A CHAVE ESTRANGEIRA 
-- =====================================================================================

ALTER TABLE emprestimos
ADD COLUMN id_livro INT NOT NULL AFTER id_emprestimo;

ALTER TABLE emprestimos
ADD FOREIGN KEY(id_livro)
REFERENCES livros(id_livro);

SELECT * FROM livros;
SELECT * FROM emprestimos;


-- =============================================================================
-- INSERÇÃO DOS DADOS NAS TABELAS (livros e emprestimos)
-- =============================================================================


INSERT INTO livros(titulo, autor, categoria, ano_publicacao) 
VALUES
('Luzes da Cidade', 'Mariana Castro', 'Romance', 2015),
('O Poder do Hábito', 'Daniel Martins', 'AutoAjuda', 2019),
('O Herdeiro do Reino', 'Lucas Farias', 'Fantasia', 2012),
('Crônicas do Futuro', 'Pedro Azevedo', 'Ficção Científica', 2021),
('Inteligência Artificial Hoje', 'Diego Santos', 'Tecnologia', 2023),
('Segredos de Família', 'Tatiane Rocha', 'Drama', 2014),
('Manual da Vida Simples', 'Carla Mendes', 'AutoAjuda', 2019),
('Caminho das Montanhas', 'Fernanda Lopes', 'Aventura', 2012),
('O Mistério do Farol', 'Roberto Tavares', 'Suspense', 2017),
('História da Chuva', 'Ana Paula', 'Poesia', 2010),
('A Fórmula do Sucesso', 'Gustavo Henrique', 'Negócios', 2016),
('Programação para Iniciantes', 'Marcos Vinícius', 'Tecnologia', 2021),
('O Diário Perdido', 'Daniel Costa', 'Romance', 2019),
('Ecos do Passado', 'Larissa Freitas', 'Drama', 2015),
('A Lenda do Dragão Azul', 'Thiago Ribeiro', 'Fantasia', 2013),
('Viagem ao Centro Digital', 'Bruno Martins', 'Tecnologia', 2020),
('O Jogo da Mente', 'Patrícia Souza', 'Psicologia', 2022),
('Mistérios da Cidade Velha', 'Renato Alves', 'Suspense', 2018),
('Além do Horizonte', 'Camila Torres', 'Aventura', 2014),
('O Guardião do Tempo', 'André Batista', 'Fantasia', 2011),
('Histórias de um Café', 'Beatriz Costa', 'Drama', 2013),
('Noite de Estrelas', 'Felipe Rocha', 'Romance', 2016),
('A Arte da Paciência', 'Juliana Lima', 'AutoAjuda', 2017),
('Aprendendo SQL', 'João Pacheco', 'Tecnologia', 2021),
('Segredos do Oceano', 'Paula Reis', 'Ficção Científica', 2019),
('Caminho das Florestas', 'Mariana silva', 'AVentura', 2010),
('O Último Império', 'Lucas Andrade', 'Fantasia', 2015),
('O Despertar da Mente', 'Thiago Fernandes', 'AutoAjuda', 2020),
('Sombras da Memória', 'Clara Nogueira', 'Romance', 2012),
('O codigo da manha', 'Rafaela Mende', 'Tecnologia', 2018);

SELECT * FROM livros;

INSERT INTO emprestimos(id_livro, nome_usuario, data_emprestimo, data_devolucao)
VALUES
(3, 'Ana Souza', '2025-01-10', '2025-01-22'),
(1, 'Beatriz Lima', '2025-01-15', '2025-01-26'),
(14, 'Laura Mendes', '2025-02-15', NULL),
(5, 'Carlos Mendes', '2025-01-12', '2025-01-23'),
(6, 'Fernanda Costa', '2025-01-25', '2025-02-07'),
(19, 'Eduardo Pacheco', '2025-02-22', NULL),
(2, 'Mariana Silva', '2025-01-20', '2025-01-30'),
(7, 'João Pereira', '2025-01-18', '2025-01-28'),
(11, 'Daniela Martins', '2025-02-05', NULL),
(13, 'Felipe Araujo', '2025-02-08', NULL),
(4, 'Lucas Santos', '2025-01-25', '2025-02-06'),
(15, 'Camila Ribeiro', '2025-02-10', NULL),
(8, 'Rafael Oliveira', '2025-01-28', '2025-02-07'),
(10, 'Patrícia Silveira', '2025-02-01', '2025-02-13'),
(9, 'Guilherme Alves', '2025-02-03', '2025-02-13'),
(12, 'Bruno Ferreira', '2025-02-12', NULL),
(17, 'Juliana Ferreira', '2025-02-25', NULL),
(21, 'Vanessa Lopes', '2025-03-01', NULL),
(16, 'Thiago Nunes', '2025-02-18', NULL),
(4, 'João Pedro', '2025-02-07', NULL),
(2, 'Gisele Santos', '2025-01-30', '2025-01-12');

SELECT * FROM emprestimos;


-- ========================================================
-- PERGUNTAS RELACIONADAS AOS DADOS DA NOSSA BIBLIOTECA
-- ========================================================


-- Quais livros estão cadastrados na biblioteca?

SELECT
	titulo,
	categoria 
FROM livros;


-- Quais usuários já fizeram algum empréstimo?

SELECT DISTINCT 
	nome_usuario
FROM emprestimos;


-- Quantos livros existem cadastrados por categoria?

SELECT
	categoria,
    COUNT(*) as Qtd_por_Categoria
FROM livros
GROUP BY categoria
ORDER BY Qtd_por_Categoria DESC;


-- Quantos empréstimos já foram realizados no total?

SELECT
	COUNT(*) Qtd_livros_emprestados
FROM emprestimos;


-- Quais livros foram publicados depois de 2015?

SELECT
	titulo,
    autor,
    categoria,
    ano_publicacao
FROM livros
WHERE ano_publicacao > 2015
ORDER BY ano_publicacao ASC;

-- Quais livros nunca foram emprestados?

SELECT
    l.titulo,
    l.autor,
    l.categoria,
    l.ano_publicacao
FROM livros AS l
LEFT JOIN emprestimos AS e
    ON l.id_livro = e.id_livro
WHERE e.id_livro IS NULL;


-- Quantos empréstimos cada usuário já fez?

SELECT
	e.nome_usuario,
	COUNT(*) qtd_livros_emprestados
FROM emprestimos AS e
GROUP BY e.nome_usuario
ORDER BY qtd_livros_emprestados DESC;


-- Quais são os 5 livros mais emprestados?

SELECT
	l.titulo,
    l.autor,
    l.categoria,
    l.ano_publicacao,
    COUNT(*) as qtd_livros_emprestados
FROM livros AS l
JOIN emprestimos AS e
	ON l.id_livro = e.id_livro
GROUP BY
	l.titulo,
    l.autor,
    l.categoria,
    l.ano_publicacao
ORDER BY qtd_livros_emprestados DESC
LIMIT 5;


-- Quais categorias de livros são mais populares em empréstimos?

SELECT
	l.categoria,
    COUNT(*) AS total_emprestimos
FROM livros AS l
JOIN emprestimos AS e
	ON l.id_livro = e.id_livro
GROUP BY l.categoria
ORDER BY total_emprestimos DESC;


-- Qual mês teve o maior número de empréstimos?

SELECT
	DATE_FORMAT(e.data_emprestimo, '%M') AS mes,
    COUNT(*) AS total_emprestimos
FROM livros AS l
JOIN emprestimos AS e
	ON l.id_livro = e.id_livro
GROUP BY mes
ORDER BY total_emprestimos DESC
LIMIT 1;


-- E qual mês teve o menor número de empréstimos?

SELECT
	DATE_FORMAT(e.data_emprestimo, '%M') AS mes,
    COUNT(*) AS total_emprestimos
FROM livros AS l
JOIN emprestimos AS e
	ON l.id_livro = e.id_livro
GROUP BY mes
ORDER BY total_emprestimos ASC
LIMIT 1;


-- Agora, queremos um Ranking dos usuários que mais utilizaram a nossa biblioteca

SELECT
	nome_usuario,
    COUNT(*) AS total_emprestimos
FROM emprestimos 
GROUP BY nome_usuario 
ORDER BY total_emprestimos DESC
;










-- 1) Quantas vezes Natalie Portman foi indicada ao Oscar?
SELECT * from movies where name like '%Natalie Portman%';
RESPOSTA: 3
    

-- 2)Quantos Oscars Natalie Portman ganhou?
SELECT * from movies where name = '%Natalie Portman%' and winner like 'True%';
RESPOSTA: Nenhuma
    
    
-- 3) Amy Adams já ganhou algum Oscar?
SELECT * from movies where name like '%Amy Adams%' and winner like 'True%';
RESPOSTA: Nenhum 
    
    
-- 4) A série de filmes Toy Story ganhou um Oscar em quais anos?
SELECT * from movies where film like '%Toy Story%' and winner like 'True%';
RESPOSTA: 2011 e 2020 
    

-- 5)Quem tem mais Oscars: a categoria "Melhor  Ator" ou "Melhor Filme"?
    Select
    SUM(CASE WHEN category like '%ACTOR%' and winner like 'True%' THEN 1 ELSE 0 END) AS Melhor_Ator ,
    SUM(CASE WHEN category like '%BEST PICTURE%' and winner like 'True%' THEN 1 ELSE 0 END)  AS Melhor_Filme
   from movies;
RESPOSTA: Melhor ator com 177 contra 58 melhor filme 


-- 6)O primeiro Oscar para melhor Atriz foi para quem? Em que ano?
SELECT * from movies where category like '%ACTRESS%' and ceremony = '1' and winner like 'true%';
RESPOSTA: O primeiro oscar foi para Janet Gaynor / Ano 1928 
    

-- 8 Em qual edição do Oscar "Crash" ganhou o prêmio principal?
SELECT * FROM movies WHERE film = 'Crash' AND CATEGORY = 'FILM EDITING' AND winner LIKE '1%';
RESPOSTA: Em 2006 de melhor filme


-- 10 O filme Central do Brasil aparece no Oscar?
SELECT * FROM movies WHERE film LIKE '%Central Station%';
RESPOSTA: Sim foi indicado em 1999



-- 11 Inclua no banco 3 filmes que nunca nem foram nomeados ao Oscar, mas que na sua opinião, merecem. 
INSERT INTO movies (name, release_year, actor)
VALUES
('O Show de Truman" (The Truman Show)', 1998, 'Jim Carrey'),
('O Fabuloso Destino de Amélie Poulain', 2001, 'Audrey Tautou'),
('Clube da Luta', 1999, 'Edward Norton e Brad Pitt');


-- 12  Crie uma nova categoria de premiação. Qualquer prêmio que você queira dar. Agora vamos dar esses prêmios aos filmes que você cadastrou na questão acima.'
UPDATE movies set category = 'Best Film In The Universe' where ceremony = '93';
RESPOSTA:
10396	2019	2020	93	Best Film In The Universe	Anthony Russo, Joe Russo	Vingadores: Ultimato	True
10397	2021	2022	93	Best Film In The Universe	Jon Watts	Homem-Aranha: Sem Volta para Casa	True
10398	2021	2022	93	Best Film In The Universe	Anthony Russo, Joe Russo	Vingadores: Guerra Infinita	True

-- 13 Qual foi o primeiro ano a ter um prêmio do Oscar?
SELECT * from movies where ceremony = '1';
RESPOSTA: EM 1928
    

-- 15 Agora procure 7 atrizes que não sejam americanas, europeias ou brasileiras.  Vamos cadastrá-los no nosso banco, mas eles ainda não ganharam o Oscar. Só foram nomeados.
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('1991', '1992', '64', 'ACTRESS', 'Gong Li', 'Raise the Red Lantern', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2000', '2001', '73', 'ACTRESS', 'Zhang Ziyi', 'Crouching Tiger, Hidden Dragon', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2005', '2006', '78', 'ACTRESS', 'Rinko Kikuchi', 'Babel', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2020', '2021', '93', 'ACTRESS', 'Priyanka Chopra', '', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2014', '2015', '87', 'ACTRESS', 'Rosamund Pike', 'Gone Girl', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2006', '2007', '79', 'ACTRESS', 'Marion Cotillard', 'La Vie en Rose', '0');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2006', '2007', '79', 'ACTRESS', 'Tilda Swinton', 'Michael Clayton', '0');
RESPOSTA: 
1	1927	1928	1	ACTOR	Richard Barthelmess	The Noose	False
2	1927	1928	1	ACTOR	Emil Jannings	The Last Command	True
3	1927	1928	1	ACTRESS	Louise Dresser	A Ship Comes In	False
4	1927	1928	1	ACTRESS	Janet Gaynor	7th Heaven	True
5	1927	1928	1	ACTRESS	Gloria Swanson	Sadie Thompson	False
6	1927	1928	1	ART DIRECTION	Rochus Gliese	Sunrise	False
7	1927	1928	1	ART DIRECTION	William Cameron Menzies	The Dove;	True

    
-- 16- Agora vamos falar da sua vida. Me diga o nome de uma pessoa que você admira e o que ela fez na sua vida. Agora me diz: Quê prêmio essa pessoa merece? 
-- minha mãe e meu pai que sempre me apoiarão em todos os momento que foi preciso e cada conquista juntos.
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2022', '2023', '94', 'BEST DAD', 'Raimundo Pereiira da Silva', 'O Pai Do Ano', '1');
INSERT INTO movies (year_film, year_ceremony, ceremony, category, `name`, film, winner) VALUES ('2022', '2023', '94', 'MOTHER OF THE YEAR', 'Lucelia Pereira da Silva', 'A Mãe do Ano', '1');

RESPOSTA: 
10397	2022	2023	94	BEST DAD	Raimundo Pereira da Silva	O Pai Do Ano	1
10398	2022	2023	94	MOTHER OF THE YEAR	Lucelia Pereira da Silva	A Mãe do Ano	1


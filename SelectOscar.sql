SELECT 
Count(*)
FROM filmes 
WHERE nome_do_indicado = "Natalie Portman";

SELECT 
Count(*)
FROM filmes 
WHERE nome_do_indicado = "Natalie Portman" and vencedor = "Sim";

SELECT 
Count(*)
FROM filmes 
WHERE nome_do_indicado = "Amy Adams" and vencedor = "Sim";

SELECT 
ano_cerimonia
FROM filmes 
WHERE nome_filme Like "%Toy Story%" and vencedor = "Sim";

SELECT 
Max(ano_cerimonia)
FROM filmes 
WHERE categoria = "Actress";

SELECT 
nome_do_indicado, ano_cerimonia
FROM filmes 
WHERE categoria = "Actress" and vencedor = "Sim"
ORDER BY ano_cerimonia ASC
LIMIT 1;

SELECT 
vencedor
FROM filmes 
iNSERT INTO 
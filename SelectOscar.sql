Use oscar_database;

SET SQL_SAFE_UPDATES = 0;

UPDATE indicados_ao_oscar 
SET vencedor = CASE
	WHEN vencedor = 1 THEN 'Sim'
	WHEN vencedor = 0 THEN 'Não'
	ELSE vencedor
END
WHERE vencedor REGEXP '^-?[0-9]+$' AND vencedor IN (0 , 1);
        
UPDATE indicados_ao_oscar
SET vencedor = "Não"
WHERE nome_do_filme = "City of God";

SET SQL_SAFE_UPDATES = 1;

SELECT 
Count(*)
FROM indicados_ao_oscar 
WHERE nome_do_indicado = "Natalie Portman";

SELECT 
Count(*)
FROM indicados_ao_oscar  
WHERE nome_do_indicado = "Natalie Portman" and vencedor = "sim";

SELECT 
Count(*)
FROM indicados_ao_oscar  
WHERE nome_do_indicado = "Amy Adams" and vencedor = "Sim";

SELECT 
ano_cerimonia
FROM indicados_ao_oscar  
WHERE nome_do_filme Like "%Toy Story%" and vencedor = "Sim";

SELECT 
Max(ano_cerimonia)
FROM indicados_ao_oscar  
WHERE categoria = "Actress";

SELECT 
nome_do_indicado, ano_cerimonia
FROM indicados_ao_oscar  
WHERE categoria = "Actress" and vencedor = "Sim"
ORDER BY ano_cerimonia ASC
LIMIT 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE indicados_ao_oscar
SET vencedor = CASE
    WHEN vencedor = 'Sim' THEN 1
    WHEN vencedor = 'Não' THEN 0
    ELSE vencedor
END;
SET SQL_SAFE_UPDATES = 1;

select vencedor from indicados_ao_oscar;

select cerimonia from indicados_ao_oscar
where nome_do_filme = "Crash";

SET SQL_SAFE_UPDATES = 0;
UPDATE indicados_ao_oscar
set vencedor = 1
where nome_do_filme = "City of God";
SET SQL_SAFE_UPDATES = 1;

select * from indicados_ao_oscar
where nome_do_filme = "City of God";

select * from indicados_ao_oscar
where nome_do_filme = "Central Station";

INSERT INTO indicados_ao_oscar(
ano_filmagem,
ano_cerimonia,
cerimonia,
categoria,
nome_do_indicado,
nome_do_filme,
vencedor) VALUES (2021,2022,94,'MUSIC (Original Song)','We Don’t Talk About Bruno','Encanto','Sim');

INSERT INTO indicados_ao_oscar(
ano_filmagem,
ano_cerimonia,
cerimonia,
categoria,
nome_do_indicado,
nome_do_filme,
vencedor) VALUES (2004,2005,77,'CINEMATOGRAPHY','Andrew Niccol','The Terminal','Sim');

INSERT INTO indicados_ao_oscar(
ano_filmagem,
ano_cerimonia,
cerimonia,
categoria,
nome_do_indicado,
nome_do_filme,
vencedor) VALUES (2023,2024,96,'CINEMATOGRAPHY','Seth Rogen','As Tartarugas Ninja: Caos Mutante','Sim');

select * from indicados_ao_oscar 
where nome_do_filme = "As Tartarugas Ninja: Caos Mutante" or nome_do_filme = "The Terminal" or nome_do_filme = "Encanto";

select nome_do_filme
from indicados_ao_oscar
where ano_cerimonia = 2001 and vencedor = 1 and categoria = "CINEMATOGRAPHY";

select nome_do_indicado
from indicados_ao_oscar
where ano_cerimonia = 2001 and vencedor = 1 and categoria LIKE "%ACTRESS%";

select nome_do_indicado
from indicados_ao_oscar
where ano_cerimonia = 2001 and vencedor = 1 and categoria LIKE "%ACTOR%";

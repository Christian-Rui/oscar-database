Use oscar_database;

SET SQL_SAFE_UPDATES = 0;

UPDATE indicados_ao_oscar
SET vencedor = CASE
    WHEN vencedor = 1 THEN "Sim"
    WHEN vencedor = 0 THEN "Não"
    ELSE vencedor
END;

UPDATE indicados_ao_oscar
set vencedor = "Não"
where nome_do_filme = "City of God";

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


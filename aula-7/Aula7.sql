SELECT medico_id,  telefone
	FROM medico_medico_telefone mmt  
	LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
	ORDER BY medico_id
	
SELECT medico_id,  telefone
	FROM medico_medico_telefone mmt  
	LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
	GROUP BY medico_id
	ORDER BY medico_id
	
SELECT medico_id, count(*), array_agg(telefone)
	FROM medico_medico_telefone mmt  
	LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
	GROUP BY medico_id
	ORDER BY medico_id
	

SELECT medico_id, array_agg(telefone)
	FROM medico_medico_telefone mmt  
	LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
	GROUP BY medico_id
	ORDER BY medico_id



SELECT * FROM (SELECT medico_id, array_agg(telefone)
	FROM medico_medico_telefone mmt  
	LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
	GROUP BY medico_id) AS t1
	RIGHT JOIN medico m ON m.id = t1.medico_id
	
	
WITH t1 AS 
	(SELECT medico_id, array_agg(telefone)
		FROM medico_medico_telefone mmt  
		LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
		GROUP BY medico_id)
SELECT * FROM medico m
	LEFT JOIN t1 ON m.id = t1.medico_id
	

WITH t1 AS 
	(SELECT medico_id, array_agg(telefone) as telefones
		FROM medico_medico_telefone mmt  
		LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
		GROUP BY medico_id)
SELECT m.nome, 
	   m.crm_numero, 
	   uf.nome as nome_uf, 
	   t1.telefones 
	FROM medico m
	LEFT JOIN t1 ON m.id = t1.medico_id
	INNER JOIN uf ON uf.id = m.crm_uf_id
	

CREATE OR REPLACE VIEW medico_telefones AS
	WITH t1 AS 
		(SELECT medico_id, array_agg(telefone) as telefones
			FROM medico_medico_telefone mmt  
			LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
			GROUP BY medico_id)
	SELECT m.nome, 
		   m.crm_numero, 
		   uf.nome as nome_uf, 
		   t1.telefones 
		FROM medico m
		LEFT JOIN t1 ON m.id = t1.medico_id
		INNER JOIN uf ON uf.id = m.crm_uf_id
		
		
SELECT * FROM medico_telefones


CREATE MATERIALIZED VIEW IF NOT EXISTS medico_telefones_2 AS
	WITH t1 AS 
		(SELECT medico_id, array_agg(telefone) as telefones
			FROM medico_medico_telefone mmt  
			LEFT JOIN medico_telefone mt ON mt.id = mmt.medico_telefone_id
			GROUP BY medico_id)
	SELECT m.nome, 
		   m.crm_numero, 
		   uf.nome as nome_uf, 
		   t1.telefones 
		FROM medico m
		LEFT JOIN t1 ON m.id = t1.medico_id
		INNER JOIN uf ON uf.id = m.crm_uf_id;
		
INSERT INTO public.medico(nome, crm_numero, crm_uf_id, logradouro, numero, complemento, cep, bairro_id)
VALUES
    ('Médico Novo', '000000', floor(random() * (56 - 30 + 1)) + 30, 'Rua Ab', '100', 'Sala 1', 12345678, floor(random() * 10) + 1);
	
	
SELECT * FROM medico_telefones;

SELECT * FROM medico_telefones_2;

REFRESH MATERIALIZED VIEW medico_telefones_2;

SELECT * FROM medico_telefones_2;

DROP VIEW medico_telefones;

DROP MATERIALIZED VIEW medico_telefones_2;
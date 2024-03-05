UPDATE bebe SET sexo = 'M' WHERE id IN (2,4,6,8,10,12,14);

-- ANO ENTRE 2000 E 2010
-- ALTURA < 50
-- SEXO MASCULINO

SELECT * 
	FROM bebe 
	WHERE data_nascimento BETWEEN '2000-01-01' AND '2010-12-31'
		AND ALTURA < 50
		AND sexo = 'M';

SELECT * FROM BEBE WHERE nome LIKE '%GAB%';

SELECT * FROM BEBE WHERE UPPER(nome) LIKE '%GAB%';

SELECT * FROM BEBE WHERE nome ILIKE '%GAB%';

SELECT * FROM BEBE WHERE peso >= 3 AND peso <= 3.2;

SELECT * FROM BEBE WHERE peso BETWEEN 3 AND 3.2;

INSERT INTO bebe (nome, data_nascimento, peso, altura, sexo) VALUES 
('Roberto da Silva', now(), 3, 50, 'M'),
('RODRIGO da silva', current_date, 3.2, 48, 'M');


SELECT bairro_id FROM MEDICO;

SELECT * 
	FROM bairro 
	WHERE bairro.id IN (SELECT bairro_id FROM MEDICO);

SELECT * 
	FROM municipio 
	WHERE municipio.id IN(SELECT municipio_id 
							FROM bairro 
							WHERE bairro.id IN (SELECT bairro_id FROM MEDICO));
							
SELECT * 
	FROM medico, bairro, municipio, uf 
	WHERE bairro.id = medico.bairro_id 
		AND bairro.municipio_id = municipio.id
		AND municipio.uf_id = uf.id;
	
SELECT * 
	FROM medico AS m
	INNER JOIN bairro AS b ON m.bairro_id = b.id
	INNER JOIN municipio mu ON mu.id = b.municipio_id
	INNER JOIN uf ON uf.id = mu.uf_id
	
SELECT * 
	FROM medico AS m	
	left join medico_medico_telefone mmt on m.id = mmt.medico_id 
	left join medico_telefone mt on mt.id = mmt.medico_telefone_id
	
SELECT * 
	FROM medico AS m	
	left join medico_medico_telefone mmt on m.id = mmt.medico_id 
	WHERE mmt.medico_id IS NULL
	

SELECT medico_id,  telefone
	FROM medico_medico_telefone mmt  
	left join medico_telefone mt on mt.id = mmt.medico_telefone_id

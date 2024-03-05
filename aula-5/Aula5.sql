INSERT INTO public.uf (nome, sigla) VALUES 
  ('Rio de Janeiro', 'RJ'),
	('Acre', 'AC'),
    ('Alagoas', 'AL'),
    ('Amapá', 'AP'),
    ('Amazonas', 'AM'),
    ('Bahia', 'BA'),
    ('Ceará', 'CE'),
    ('Distrito Federal', 'DF'),
    ('Espírito Santo', 'ES'),
    ('Goiás', 'GO'),
    ('Maranhão', 'MA'),
    ('Mato Grosso', 'MT'),
    ('Mato Grosso do Sul', 'MS'),
    ('Minas Gerais', 'MG'),
    ('Pará', 'PA'),
    ('Paraíba', 'PB'),
    ('Paraná', 'PR'),
    ('Pernambuco', 'PE'),
    ('Piauí', 'PI'),
	('Rio Grande do Norte', 'RN'),
    ('Rio Grande do Sul', 'RS'),
    ('Rondônia', 'RO'),
    ('Roraima', 'RR'),
    ('Santa Catarina', 'SC'),
    ('São Paulo', 'SP'),
    ('Sergipe', 'SE'),
    ('Tocantins', 'TO');


SELECT CONCAT(sigla, ' - ',UPPER(nome)) AS descricao, 
		sigla || ' - ' || UPPER(nome) AS "descrição",
		concat_ws(' - ', UPPER(nome), sigla)
	FROM uf 
	ORDER BY nome 
	LIMIT 5 ;
	
--DELETE FROM public.uf;

INSERT INTO bebe (nome, data_nascimento, peso, altura) 
VALUES 
    ('Sophia Gabriela Oliveira', '2004-07-20 00:00:00', 3.2, 49),
    ('Arthur Luiz Santos', '2007-03-15 00:00:00', 3.4, 50),
    ('Alice Cristina Pereira', '2009-11-12 00:00:00', 3.6, 51),
    ('Miguel Antonio Costa', '2012-05-18 00:00:00', 3.1, 48),
    ('Julia Beatriz Silva', '2014-09-22 00:00:00', 3.8, 52),
    ('Enzo Gabriel Almeida', '2016-04-27 00:00:00', 3.5, 50),
    ('Isabella Luiza Rodrigues', '2018-10-30 00:00:00', 3.7, 53),
    ('Lucas Fernando Martins', '2020-02-05 00:00:00', 3.3, 49),
    ('Larissa Eduarda Ferreira', '2022-08-10 00:00:00', 3.9, 51),
    ('Pedro Henrique Oliveira', '2023-03-14 00:00:00', 3.0, 46),
    ('Laura Sofia Mendes', '2002-12-08 00:00:00', 3.5, 52),
    ('Davi Lucas Pereira', '2001-06-22 00:00:00', 3.3, 48),
    ('Manuela Alves Costa', '2003-09-17 00:00:00', 3.1, 47),
    ('Gustavo Eduardo Silva', '2006-05-05 00:00:00', 3.6, 53),
    ('Sophie Maria Oliveira', '2008-11-30 00:00:00', 3.4, 50);
	
INSERT INTO bebe (nome, data_nascimento, peso, altura) 
VALUES 
    ('Sophia Gabriela Oliveira', '2014-07-20 00:00:00', 5.5, 54);
	
ALTER TABLE public.bebe ADD COLUMN sexo CHAR(1) DEFAULT 'F';
ALTER TABLE public.bebe ADD CONSTRAINT ck_sexo CHECK (sexo IN ('M', 'F'));
ALTER TABLE public.bebe ALTER COLUMN sexo SET NOT NULL;
	

SELECT * 
	FROM bebe
	WHERE altura < 50;
	
SELECT * FROM bebe WHERE id IN (2, 4, 6,8,10,12,14)
	


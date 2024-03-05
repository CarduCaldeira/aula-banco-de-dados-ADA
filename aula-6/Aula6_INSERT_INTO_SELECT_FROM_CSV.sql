CREATE TABLE public.temp_municipio
(
    uf character varying(10),
    municipio character varying(200)
);

ALTER TABLE IF EXISTS public.temp_municipio
    OWNER to postgres;
	
COPY public.temp_municipio FROM 'C:\Users\rober\Downloads\Lista_Municipios.csv' DELIMITER ';' CSV HEADER;

SELECT * FROM public.temp_municipio;

SELECT * FROM public.temp_municipio INNER JOIN public.uf ON uf.sigla = temp_municipio.uf

INSERT INTO public.municipio (nome, uf_id)
SELECT municipio , id 
	FROM public.temp_municipio 
	INNER JOIN public.uf ON uf.sigla = temp_municipio.uf;
	
DROP TABLE public.temp_municipio;


	

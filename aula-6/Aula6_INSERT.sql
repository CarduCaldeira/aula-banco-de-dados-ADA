INSERT INTO public.especialidade(descricao)
VALUES ('Obstetrícia'),
       ('Pediatria'),
       ('Dermatologia'),
       ('Ortopedia'),
       ('Cardiologia'),
       ('Ginecologia'),
       ('Urologia'),
       ('Neurologia'),
       ('Oftalmologia'),
       ('Otorrinolaringologia');
	   
INSERT INTO public.bairro(nome, municipio_id)
VALUES
    ('Bairro 1', floor(random() * 5000)),
    ('Bairro 2', floor(random() * 5000)),
    ('Bairro 3', floor(random() * 5000)),
    ('Bairro 4', floor(random() * 5000)),
    ('Bairro 5', floor(random() * 5000)),
    ('Bairro 6', floor(random() * 5000)),
    ('Bairro 7', floor(random() * 5000)),
    ('Bairro 8', floor(random() * 5000)),
    ('Bairro 9', floor(random() * 5000)),
    ('Bairro 10', floor(random() * 5000));
	
INSERT INTO public.medico(nome, crm_numero, crm_uf_id, logradouro, numero, complemento, cep, bairro_id)
VALUES
    ('Médico 1', '123456', floor(random() * (56 - 30 + 1)) + 30, 'Rua A', '100', 'Sala 1', 12345678, floor(random() * 10) + 1),
    ('Médico 2', '234567', floor(random() * (56 - 30 + 1)) + 30, 'Rua B', '200', 'Sala 2', 23456789, floor(random() * 10) + 1),
    ('Médico 3', '345678', floor(random() * (56 - 30 + 1)) + 30, 'Rua C', '300', 'Sala 3', 34567890, floor(random() * 10) + 1),
    ('Médico 4', '456789', floor(random() * (56 - 30 + 1)) + 30, 'Rua D', '400', 'Sala 4', 45678901, floor(random() * 10) + 1),
    ('Médico 5', '567890', floor(random() * (56 - 30 + 1)) + 30, 'Rua E', '500', 'Sala 5', 56789012, floor(random() * 10) + 1);

INSERT INTO public.medico_especialidade(medico_id, especialidade_id)
VALUES
    (floor(random() * 5) + 1, floor(random() * 8) + 1),
    (floor(random() * 5) + 1, floor(random() * 8) + 1),
    (floor(random() * 5) + 1, floor(random() * 8) + 1),
    (floor(random() * 5) + 1, floor(random() * 8) + 1),
    (floor(random() * 5) + 1, floor(random() * 8) + 1);

INSERT INTO public.medico_telefone(telefone)
VALUES 
    ('1112345678'),
    ('2223456789'),
    ('3334567890'),
    ('4445678901'),
    ('5556789012'),
    ('6667890123'),
    ('7778901234'),
    ('8889012345'),
    ('9990123456'),
    ('1001234567'),
    ('2112345678'),
    ('3223456789'),
    ('4334567890'),
    ('5445678901'),
    ('6556789012');

INSERT INTO public.medico_medico_telefone(medico_id, medico_telefone_id)
SELECT 
    floor(random() * 3) + 1 as medico_id,
    generate_series(1, 15) as medico_telefone_id;





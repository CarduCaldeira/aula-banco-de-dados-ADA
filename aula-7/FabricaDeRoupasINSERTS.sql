INSERT INTO public.fabricante (nome) VALUES ('Fabricante A'), ('Fabricante B'), ('Fabricante C');

INSERT INTO public.localizacao (descricao) VALUES ('Localizacao A'), ('Localizacao B'), ('Localizacao C');

INSERT INTO public.funcionario (nome, matricula, supervisor_id) VALUES ('Funcionario 1', '123456', NULL), ('Funcionario 2', '789012', 1), ('Funcionario 3', '345678', 1);

INSERT INTO public.tipo_cargo (descricao, tem_salario_minimo) VALUES ('Costureira', TRUE), ('Supervisora', FALSE);

INSERT INTO public.maquina_costura (fabricante_id, localizacao_id) VALUES (1, 1), (2, 2), (3, 3);

INSERT INTO public.tipo_maquina_costura (descricao) VALUES ('Overlock'), ('Zig Zag'), ('Costura Reta');

INSERT INTO public.maquina_costura_tipo_maquina_costura (maquina_costura_id, tipo_maquina_costura_id) VALUES (1, 1), (1, 2), (2, 2), (3, 3);

INSERT INTO public.funcionario_tipo_cargo (funcionario_id, tipo_cargo_id, data_inicio, salario_minimo) VALUES (1, 1, '2024-02-17 08:00:00', 1000.00), (2, 2, '2024-02-17 08:00:00', NULL), (3, 2, '2024-02-17 08:00:00', NULL);

INSERT INTO public.funcionario_tipo_maquina_costura (funcionario_id, tipo_maquina_costura_id) VALUES (1, 1), (1, 2), (2, 2), (3, 3);

INSERT INTO public.estilista (nome) VALUES ('Estilista 1'), ('Estilista 2');

INSERT INTO public.peca_roupa (id, funcionario_id, estilista_id, maquina_costura_id, data_inicio_prod, data_final_prod, preco_venda, modelo, modelo_descricao) VALUES (1, 1, 1, 1, '2024-02-17 08:00:00', '2024-02-17 10:00:00', 50.00, 'Modelo 1', 'Descricao Modelo 1'), (2, 2, 2, 2, '2024-02-17 08:00:00', '2024-02-17 10:00:00', 60.00, 'Modelo 2', 'Descricao Modelo 2');

INSERT INTO public.os_conserto (funcionario_id, maquina_costura_id, horario_inicio) VALUES (1, 1, '2024-02-17 10:00:00'), (2, 2, '2024-02-17 10:00:00');

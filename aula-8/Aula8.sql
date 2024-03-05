-- b) Relatório das costureiras sem produção no período 
-- (matrícula da costureira, nome, Valor Mínimo Negociado).




SELECT matricula, nome, salario_minimo 
	FROM funcionario f
	
	INNER JOIN funcionario_tipo_cargo AS ftc ON ftc.funcionario_id = f.id
	INNER JOIN tipo_cargo AS tc ON tc.id = ftc.tipo_cargo_id
	
	LEFT JOIN peca_roupa ON peca_roupa.funcionario_id = f.id
	
	WHERE tc.descricao = 'Costureira'
			AND NOT (data_inicio_prod BETWEEN '11:00:00' AND '12:00:00'
			OR data_final_prod BETWEEN '11:00:00' AND '12:00:00')
			

SELECT *
	FROM funcionario f
	
	INNER JOIN funcionario_tipo_cargo AS ftc ON ftc.funcionario_id = f.id
	INNER JOIN tipo_cargo AS tc ON tc.id = ftc.tipo_cargo_id
	
SELECT funcionario_id, max(data_inicio) AS data_inicio
					FROM funcionario_tipo_cargo 
					GROUP BY funcionario_id
			
			

SELECT matricula, nome, salario_minimo 
	FROM funcionario f
	
	INNER JOIN funcionario_tipo_cargo AS ftc ON ftc.funcionario_id = f.id
	INNER JOIN tipo_cargo AS tc ON tc.id = ftc.tipo_cargo_id
	INNER JOIN (SELECT funcionario_id, max(data_inicio) AS data_inicio
					FROM funcionario_tipo_cargo 
					GROUP BY funcionario_id) AS tb1
		ON tb1.funcionario_id = ftc.funcionario_id AND tb1.data_inicio = ftc.data_inicio
	LEFT JOIN peca_roupa ON peca_roupa.funcionario_id = f.id
	WHERE tc.descricao = 'Costureira'
			AND NOT (data_inicio_prod BETWEEN '11:00:00' AND '12:00:00'
			OR data_final_prod BETWEEN '11:00:00' AND '12:00:00')
	

	

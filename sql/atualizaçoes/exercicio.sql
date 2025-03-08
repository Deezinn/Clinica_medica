-- O pacience Paulo mudou-se para ilhota

UPDATE pacientes
SET cidade = 'Ilhota'
WHERE nome = 'Paulo';

-- A consula do medico 1 com o paciente 4 mudou para ás 12:00 horas do dia 4 de julho de 2006

UPDATE consultas
SET data = '2006-07-04',
    hora = '12:00:00'
WHERE codm = 1 AND codp = 4;

-- A paciente Ana fez aniversário e sua doença agora é cancer

UPDATE pacientes
SET doenca = 'Câncer'
WHERE nome = 'Ana';

-- A consulta do medico Pedo (codf = 3) com o paciente (codf = 4) passou para uma hora e meia depois

UPDATE consultas
SET hora = '13:30:00'
WHERE codm = 3 AND codp = 4;

-- O funcionario Carlos (codf = 4) deixou a clinica

DELETE FROM funcionarios
WHERE codf= 4;

-- As consultas marcadas apos 19 horas foram canceladas

DELETE FROM consultas
WHERE hora > '19:00:00';

-- Os pacientes com câncer ou idade inferior a 10 anos deixaram a clinica

DELETE FROM Pacientes
WHERE doenca = 'Câncer' AND idade < 10;

-- Não tinha registros com as caracteristicas acima

DELETE FROM medicos
WHERE cidade = 'Biguacu' AND cidade = 'Palhoca';

-- Não tinha registros com as caracteristicas acima

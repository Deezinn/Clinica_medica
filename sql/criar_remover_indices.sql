CREATE UNIQUE INDEX idx_medico_cpf ON Medicos(cpf);

CREATE INDEX idx_paciente_doenca ON Pacientes(doenca);

DROP INDEX idx_paciente_doenca;

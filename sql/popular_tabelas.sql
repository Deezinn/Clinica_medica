INSERT INTO ambulatorios (nroa, andar, capacidade) VALUES
(1,1,30),
(2,1,50),
(3,2,40),
(4,2,25),
(5,2,55);

INSERT INTO medicos (codm,nome,idade,especialidade,cpf,cidade,nroa) VALUES
(1,'João', 40, 'Ortopedia', '10000100000', 'Florianopolis', 1),
(2,'Maria', 42, 'Traumatologia', '10000110000', 'Blumenau', 2),
(3,'Pedro', 51, 'Pediatria', '11000100000', 'São José', 2),
(4,'Carlos', 28, 'Ortopedia', '11000110000', 'Joinville', NULL),
(5,'Marcia', 33, 'Neurologia', '10000111000', 'Biguacu', 3);

INSERT INTO pacientes (codp, nome, idade, cidade, cpf, doenca) VALUES
(1,'Ana',20,'Florianopolis', '20000200000', 'Gripe'),
(2,'Paulo',24,'Palhoca', '20000220000', 'Fratura'),
(3,'Lucia',30,'Biguacu', '22000200000', 'Tendinite'),
(4,'Carlos',28,'Joinville', '11000011000', 'Sarampo');

INSERT INTO funcionarios (codf, nome, idade, cidade, salario, cpf) VALUES
(1,'Rita', 32, 'São Jose', 1200 ,'20000100000'),
(2,'Maria', 55, 'Palhoca', 1220 ,'30000110000'),
(3,'Cario', 45, 'Florianopolis', 1100 ,'41000100000'),
(4,'Carlos', 44, 'Florianopolis', 1200 ,'51000110000'),
(5,'Paula', 33, 'Florianopolis', 2500 ,'61000111000');


INSERT INTO consultas (codm, codp, data, hora) VALUES
(1,1,'2006-06-12', '14:00'),
(1,4,'2006-06-13', '10:00'),
(2,1,'2006-06-13', '09:00'),
(2,2,'2006-06-13', '11:00'),
(2,3,'2006-06-14', '14:00'),
(2,4,'2006-06-14', '17:00'),
(3,1,'2006-06-19', '18:00'),
(3,3,'2006-06-12', '10:00'),
(3,4,'2006-06-19', '13:00'),
(4,4,'2006-06-20', '13:00'),
(4,4,'2006-06-22', '19:30');




CREATE TABLE Ambulatorios (
    nroa INT PRIMARY KEY,
    andar SMALLINT NOT NULL CHECK (andar IN (1,2,3)),
    capacidade SMALLINT
);

CREATE TABLE Medicos (
    codm INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    especialidade CHAR(20),
    cpf CHAR(11) UNIQUE,
    cidade VARCHAR(30),
    nroa INT REFERENCES Ambulatorios(nroa)
);

CREATE TABLE Pacientes (
    codp INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    cidade VARCHAR(30),
    cpf CHAR(11) UNIQUE,
    doenca VARCHAR(40) NOT NULL
);

CREATE TABLE Funcionarios (
    codf INT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade SMALLINT NOT NULL,
    cpf CHAR(11) UNIQUE,
    cidade VARCHAR(30) NOT NULL,
    salario NUMERIC(10) NOT NULL,
    cargo VARCHAR(20) NOT NULL
);

CREATE TABLE Consultas (
    codm INT,
    codp INT,
    data DATE,
    hora TIME,
    PRIMARY KEY (codm, codp, data, hora)
);



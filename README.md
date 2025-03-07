# Atividade: Projeto de Banco de Dados - Sistema de Saúde

## Descrição

Esta atividade consiste na criação de um banco de dados para gerenciar informações de médicos, pacientes, ambulatórios e funcionários. O banco de dados é projetado utilizando **SQL** e **PostgreSQL** para armazenar dados como médicos, especialidades, CPFs, salários e relacionamentos entre médicos, pacientes, ambulatórios e funcionários.

## Objetivos

- Criar e organizar tabelas no banco de dados.
- Definir chaves primárias e estrangeiras para garantir a integridade referencial.
- Utilizar restrições como `NOT NULL`, `UNIQUE`, `CHECK` para garantir a validade dos dados.
- Implementar uma estrutura que permita armazenar informações de médicos, pacientes, ambulatórios e funcionários.

## Estrutura do Banco de Dados

### Tabelas Criadas

1. **Ambulatorios**:
   - Armazena informações sobre os ambulatórios, como o número e a capacidade.
   - Exemplo de atributos: `nroa`, `andar`, `capacidade`.

2. **Medicos**:
   - Armazena informações sobre médicos, como o código, nome, idade, especialidade e CPF.
   - Possui uma **chave estrangeira** (`nroa`) que se refere à tabela `Ambulatorios`.
   - Exemplo de atributos: `codm`, `nome`, `idade`, `especialidade`, `cpf`, `cidade`.

3. **Pacientes**:
   - Armazena informações sobre pacientes, como código, nome, idade, cidade, CPF e doenças.
   - Exemplo de atributos: `codp`, `nome`, `idade`, `cidade`, `cpf`, `doenca`.

4. **Consultas**:
   - Armazena informações sobre consultas médicas, associando pacientes a médicos em uma data e hora específicas.
   - Exemplo de atributos: `codm`, `codp`, `dia`, `hora`.

5. **Funcionarios**:
   - Armazena informações sobre os funcionários, como código, nome, idade, cidade, salário e CPF.
   - Exemplo de atributos: `codf`, `nome`, `idade`, `cidade`, `salario`, `cpf`.

### Definições de Chaves

- **Chave Primária**: Cada tabela possui uma chave primária para garantir a unicidade dos registros, como `codm` para médicos, `nroa` para ambulatórios, `codp` para pacientes, e `codf` para funcionários.
- **Chave Estrangeira**: A tabela `Medicos` contém uma chave estrangeira referenciando `Ambulatorios(nroa)`, indicando qual ambulatório o médico atende.
- **Restrições**:
  - `NOT NULL`: Garantia de que certos campos como nome, idade, especialidade, CPF e salário não podem ser nulos.
  - `UNIQUE`: Garante que o CPF de médicos, pacientes e funcionários seja único.
  - `CHECK`: Para validar campos, como o número de andares de um ambulatório.

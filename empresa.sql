CREATE SCHEMA empresa;

SET SCHEMA 'empresa';

CREATE TABLE departamento(
  Dnome VARCHAR(30) NOT NULL,
  Dnumero INT PRIMARY KEY NOT NULL,
  Cpf_gerente VARCHAR(11) NOT NULL,
  Data_inicio_gerente DATE
);

CREATE TABLE funcionario(
  Pnome VARCHAR(30)	NOT NULL,
  Minicial VARCHAR(30),
  Unome VARCHAR(30) NOT NULL,
  Cpf VARCHAR(11) NOT NULL,
  Datanasc date,
  Endereco VARCHAR(50),
  Sexo VARCHAR(1),
  Salario DECIMAL,
  Cpf_supervisor VARCHAR(11),
  Dnr INT,
  PRIMARY KEY(Cpf),
  FOREIGN KEY(Cpf_supervisor) REFERENCES funcionario(Cpf),
  FOREIGN KEY(Dnr) REFERENCES departamento(Dnumero)
);

ALTER TABLE departamento ADD CONSTRAINT pk_cpf_func_cpf_gerente_depar_fk FOREIGN KEY(Cpf_gerente) REFERENCES funcionario(Cpf);

CREATE TABLE projeto(
  Projnome VARCHAR(50) NOT NULL,
  Projnumero INT NOT NULL,
  Projlocal VARCHAR(50),
  Dnum INT NOT NULL,
  PRIMARY KEY(Projnumero),
  FOREIGN KEY(Dnum) REFERENCES departamento(Dnumero)
);

CREATE TABLE dependente(
  Fcpf VARCHAR(11),
  Nome_dependente VARCHAR(50) NOT NULL,
  Sexo VARCHAR(1),
  Datanasc DATE,
  Parentesco VARCHAR(50),
  PRIMARY KEY(Fcpf, Nome_dependente),
  FOREIGN KEY(Fcpf) REFERENCES funcionario(Cpf)
);

CREATE TABLE localizacoes_dep(
  Dnumero INT,
  Dlocal VARCHAR(50),
  PRIMARY KEY(Dnumero, Dlocal),
  FOREIGN KEY(Dnumero) REFERENCES departamento(Dnumero)
);

CREATE TABLE trabalha_em(
  Fcpf VARCHAR(11),
  Pnr INT,
  Horas DECIMAL NOT NULL,
  PRIMARY KEY(Fcpf, Pnr),
  FOREIGN KEY(Fcpf) REFERENCES funcionario(Cpf),
  FOREIGN KEY(Pnr) REFERENCES projeto(Projnumero)
);

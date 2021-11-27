SET SCHEMA 'empresa';

INSERT INTO funcionario VALUES(
 'Anderson',
  'S',
  'Souza',
  '00011100011',
  '2001-01-15',
  'Rua joelison pinheiro',
  'M',
  '1328.00',
  '00011100011',
  NULL
),(
  'Joao',
  'B',
  'Souza',
  '12345678911',
  '1965-01-09',
  'Rua das Flores, 102, Quixada, CE',
  'M',
  '2000.00',
  NULL,
  NULL
),(
  'Cristiano',
  'R',
  'Lima',
  '66688811100',
  '1962-09-15',
  'Tv. Souza Lima, 52, Itaquera, SP',
  'M',
  '5000.00',
  '00011100011',
  NULL
),(
  'Rivaldo',
  'S',
  'Pinheiro',
  '11122233300',
  '1980-10-15',
  'Tv. Lima Landim, 10, Piracicaba, SP',
  'M',
  '10000.00',
  '12345678911',
  NULL
), (
  'Lionel',
  'A',
  'Messi',
  '22222222233',
  '1987-07-24',
  'Av. Camp Nou, 354, Barcelona, CE',
  'M',
  '5000.00',
  '00011100011',
  NULL
), (
  'Marta',
  'R',
  'Silva',
  '44444455523',
  '1990-10-20',
  'Rua de Interlagos, 80, Itaquera, SP',
  'F',
  '7000.00',
  NULL,
  NULL
);

INSERT INTO departamento VALUES(
  'Financeiro',
  1,
  '00011100011',
  '2021-11-11'
),(
  'Administracao',
  2,
  '22222222233',
  '2021-09-09'
),(
  'Recursos humanos',
  3,
  '12345678911',
  '2021-06-05'
),(
  'Setor comercial',
  4,
  '44444455523',
  '2020-10-05'
),(
  'Setor de expedicao',
  5,
  '66688811100',
  '2019-01-15'
);

UPDATE funcionario SET Dnr = 1 WHERE cpf = '00011100011';
UPDATE funcionario SET Dnr = 2 WHERE cpf = '12345678911';
UPDATE funcionario SET Dnr = 3 WHERE cpf = '66688811100';
UPDATE funcionario SET Dnr = 1 WHERE cpf = '11122233300';
UPDATE funcionario SET Dnr = 4 WHERE cpf = '22222222233';
UPDATE funcionario SET Dnr = 2 WHERE cpf = '44444455523';

INSERT INTO localizacoes_dep VALUES(1, 'Coritiba'),(2, 'Itu'),(3, 'Fortaleza'), (4, 'Senador'), (5, 'Pedra Branca');

INSERT INTO projeto VALUES(
  'Projeto A',
  1,
  'Itu',
  1
),(
  'Projeto B',
  2,
  'Fortaleza',
  2
),(
  'Projeto C',
  3,
  'Fortaleza',
  4
),(
  'Projeto D',
  4,
  'Senador',
  3
), (
  'Projeto E',
  5,
  'Pedra Branca',
  4
);

INSERT INTO dependente VALUES(
  '00011100011',
  'Alicia',
  'F',
  '1986-04-05',
  'Filha'
),(
  '00011100011',
  'Tiago',
  'M',
  '1983-10-25',
  'Filho'
),(
  '00011100011',
  'Antonio',
  'M',
  '1942-02-10',
  'Marido'
),(
  '11122233300',
  'Michael',
  'M',
  '1980-10-20',
  'Filho'
),(
  '11122233300',
  'Anderson',
  'M',
  '2001-01-15',
  'Filho'
);

INSERT INTO trabalha_em VALUES(
  '00011100011',
  1,
  20.5
),(
  '11122233300',
  2,
  35.0
),(
  '66688811100',
  3,
  50.00
),(
  '44444455523',
  4,
  15.0
), (
  '22222222233',
  5,
  35.0
);
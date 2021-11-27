SET SCHEMA 'locadora_de_bicicleta';

INSERT INTO bicicleta VALUES(1, TRUE, 10.00),(2, TRUE, 15.00), (3, TRUE, 30.00), (4, TRUE, 25.00), (5, TRUE, 45.00);

INSERT INTO cliente VALUES(1, 100.00),(2, 10.00),(3, 20.00),(4, 70.00), (5, 80.00);

INSERT INTO estacao VALUES(
  1,
  'Estação Padre Cícero',
  'Rua Alfredo Ivo, 1014, Quixadá, CE',
  20,
  10
), (
  2,
  'Estação B',
  'Rua B, 1014, Quixadá, CE',
  50,
  10
), (
  3,
  'Estação C',
  'Rua C, 5432, Fortaleza, CE',
  40,
  30
), (
  4,
  'Estação arena',
  'Rua Olivando Pinheiro, 104, Quixadá, CE',
  50,
  40
), (
  5,
  'Estação E',
  'Rua Olivando E, 1012, Senador, CE',
  50,
  40
);

INSERT INTO locacao VALUES(1,1,1,2,'2021-11-12','10:30','2021-12-20','17:00',350.00);
INSERT INTO locacao VALUES(2,2,2,2,'2021-11-10','16:30','2021-11-20','17:00',120.50);
INSERT INTO locacao VALUES(3,3,3,1,'2020-10-05','10:00','2020-11-10','15:00',200.00);
INSERT INTO locacao VALUES(4,4,4,1,'2021-01-20','14:00','2021-01-30','10:00',500.00);
INSERT INTO locacao VALUES(5,5,5,1,'2021-02-20','18:00','2021-04-30','10:00',1500.00);
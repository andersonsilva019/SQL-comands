CREATE SCHEMA locadora_de_bicicleta;

SET SCHEMA 'locadora_de_bicicleta';

CREATE TABLE bicicleta(
  id INTEGER,
  disponivel BOOL NOT NULL DEFAULT FALSE,
  valor_fracao_hora DECIMAL(5,2) NOT NULL,
  PRIMARY KEY(id)
);

CREATE TABLE estacao(
  id INTEGER,
  nome VARCHAR(50) NOT NULL,
  endereco VARCHAR(50) NOT NULL,
  num_bic_total INTEGER DEFAULT 0,
  num_bic_disponiveis INTEGER DEFAULT 0,
  PRIMARY KEY(id)
);

CREATE TABLE cliente(
  id INTEGER PRIMARY KEY,
  total_creditos DECIMAL(5,2) NOT NULL
);

CREATE TABLE locacao(
  id_bic INTEGER,
  id_cliente INTEGER,
  id_estacao_origem INTEGER,
  id_estacao_destino INTEGER,
  data_locacao DATE,
  hr_locacao TIME,
  dt_devolucao DATE NOT NULL,
  hr_devolucao TIME NOT NULL,
  valor_total DECIMAL(8,2) NOT NULL,
  PRIMARY KEY(data_locacao, hr_locacao),
  FOREIGN KEY (id_bic) REFERENCES bicicleta(id),
  FOREIGN KEY (id_cliente) REFERENCES cliente(id),
  FOREIGN KEY (id_estacao_origem) REFERENCES estacao(id)
);
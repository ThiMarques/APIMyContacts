CREATE DATABASE mycontacts; --query

CREATE EXTENSION IF NOT EXISTS "uuid-ossp"; --para criar a extensao do uuid, pois sem essa extensao ele da um erro

--os comandos que ficam dentro desse parenteses, sao as colunas da tabela
CREATE TABLE IF NOT EXISTS categories (
  id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
  name VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS contacts (
  id UUID NOT NULL UNIQUE DEFAULT uuid_generate_v4(),
  name VARCHAR NOT NULL,
  email VARCHAR UNIQUE,
  phone VARCHAR,
  category_id UUID,
  FOREIGN KEY(category_id) REFERENCES categories(id)
);
--Varcher = string; not null = tem sem que ter alguma string aqui
--O email sempre tem que ser unico por isso UNIQUE
--A chave estrangeira da category_id vai referenciar dentro da tabela categories a coluna id

CREATE DATABASE IF NOT EXISTS tienda2;

USE tienda2;

CREATE TABLE IF NOT EXISTS t_usuaros(
    id_usuario      int(11)    auto_increment NOT NULL,
    nombre        varchar(100)                  NOT NULL,
    apellido      varchar(100)                NOT NULL,
    email        varchar(200)                  NOT NULL,
    password      varchar(200)                NOT NULL,
    rol           varchar(20)                      NOT NULL,
    imagen        varchar(200),
    CONSTRAINT pk_usurio PRIMARY KEY(id_usuario),
    CONSTRAINT uq_email    UNIQUE(email)

)ENGINE=InnoDb;

INSERT INTO t_usuaros VALUE(NULL, 'Julieth','Rojas','lauris.jrojas13@gmail.com','123456789','admin','imagen');
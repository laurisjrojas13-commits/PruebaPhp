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

CREATE TABLE IF NOT EXISTS t_categoria(
    id_categoria          int(11)auto_increment     NOT NULL,
    nombre_categoria      varchar(100)              NOT NULL,
    CONSTRAINT pk_categoria         PRIMARY KEY(id_categoria)
)ENGINE=InnoDb;

INSERT INTO t_categoria VALUE(NULL,'Construccion'),(NULL,'Electrico'),(NULL,'Pinturas'),(NULL,'Pisos');

CREATE TABLE IF NOT EXISTS t_producto(
    id_producto            int(11)    auto_increment    NOT NULL,
    nombre_producto        varchar(100)                 NOT NULL,
    descripcion            varchar (200)                NOT NULL,
    fecha                  date                         NOT NULL,
    stock                  int(100)                    NOT NULL,
    precio                 float(10,2)                  NOT NULL,
    imagen                 varchar(255)                 NOT NULL,
    oferta                 varchar(200)                 NOT NULL,
    id_categoria          int(11)                      NOT NULL,
    CONSTRAINT pk_producto              PRIMARY KEY(id_producto),
    CONSTRAINT fk_producto_categoria    FOREIGN KEY(id_categoria) REFERENCES t_categoria(id_categoria)

)
-- Se crea la base de datos
CREATE DATABASE posts;

-- se ingresa a la base de datos
\c "posts";

-- se crea la tabla post
CREATE TABLE post(

-- se crea la columna id que corresponderá a un número serial
id SERIAL,

--Se crea la columna nombre usuario que corresponderá a un texto de máximo 30 caracteres
nombre_usuario VARCHAR(30),

--Se crea la columna fecha de creación que correspondera a una fecha
fecha_creacion DATE,

--Se crea la columna de contenido que corresponderá a un texto
contenido TEXT,

--Se crea la columna de descripción que corresponderá a un texto
descripcion TEXT,

--Se define como primary key el id
PRIMARY KEY (id));

--Se inserta un post para el usario Pamela
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES
('Pamela','10-20-2020','Este es el contenido del post 1', 'Post 1');

--Se inserta un segundo post para el usario Pamela
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES
('Pamela','10-21-2020','Este es el contenido del post 2', 'Post 2');

--Se inserta un post para el usario Carlos
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion) VALUES
('Carlos','10-21-2020','Este es el contenido del post 3', 'Post 3');

--Se le añade la columna título a la tabla post
ALTER TABLE post
ADD titulo VARCHAR(30);

--Se le añade el título post 1 al post 1
UPDATE post SET titulo='post 1' WHERE id='1';

--Se le añade el título post 2 al post 2
UPDATE post SET titulo='post 2' WHERE id='2';

--Se le añade el título post 3 al post 3
UPDATE post SET titulo='post 3' WHERE id='3';

--Se inserta un post para el usario Pedro
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Pedro','10-22-2020','Este es el contenido del post 4', 'Post 4', 'Post 4');

--Se inserta un segundo post para el usario Pedro
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Pedro','10-22-2020','Este es el contenido del post 5', 'Post 5', 'post 5');

--Se elimina el post de Carlos
DELETE FROM post WHERE nombre_usuario='Carlos';

--Se inserta un post para el usario Carlos
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Carlos','10-22-2020','Este es el contenido del post', 'Post de Carlos', 'Nuevo post de Carlos');

-- se crea la tabla comentarios
CREATE TABLE comentarios(

-- se crea la columna id que corresponderá a un número serial 
id_comentarios INT,

-- se crea la columna fecha que corresponderá a una fecha 
fecha_comentarios DATE,

--Se crea la columna hora que corresponderá a una hora
hora_comentario TIME,

--Se crea la columna de contenido_comentarios que corresponderá a un texto
contenido_comentarios TEXT,

--Se define como foreign key el id_comentarios haciendo referencia al id de la tabla post
FOREIGN KEY (id_comentarios) REFERENCES post(id));

--Se añade un comentario al post de Pamela
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('1','10-24-2020','23:20:00', 'Comentario a Pamela 1');

--Se añade un segundo comentario al post de Pamela
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('1','10-24-2020','23:22:00', 'Comentario a Pamela 2');

--Se añade un comentario al post de Carlos
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('6','10-24-2020','23:22:00', 'Comentario a Carlos 1');

--Se añade un segundo comentario al post de Carlos
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('6','10-24-2020','23:22:01', 'Comentario a Carlos 2');

--Se añade un tercer comentario al post de Carlos
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('6','10-24-2020','23:22:02', 'Comentario a Carlos 3');

--Se añade un cuarto comentario al post de Carlos
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('6','10-24-2020','23:22:03', 'Comentario a Carlos 4');

--Se inserta un post para el usario margarita
INSERT INTO post (nombre_usuario, fecha_creacion, contenido, descripcion, titulo) VALUES
('Margarita','10-26-2020','Este es el contenido del post 1', 'Post 1', 'post 1');

--Se añade un primer comentario al post de Margarita
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('7','10-24-2020','23:22:04', 'Comentario a Margarita 1');

--Se añade un segundo comentario al post de Margarita
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('7','10-24-2020','23:22:05', 'Comentario a Margarita 2');

--Se añade un tercer comentario al post de Margarita
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('7','10-24-2020','23:22:06', 'Comentario a Margarita 3');

--Se añade un cuarto comentario al post de Margarita
INSERT INTO comentarios (id_comentarios, fecha_comentarios, hora_comentario, contenido_comentarios) VALUES
('7','10-24-2020','23:22:07', 'Comentario a Margarita 4');
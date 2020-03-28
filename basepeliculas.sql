#Creamos la base de datos.
create database if not exists basepeliculas;

#Seleccionamos la base de datos.
use basepeliculas;

create table if not exists peliculas(
id_pelicula int not null,
titulo varchar(45) not null,
anio date,
nacionalidad varchar(20),
idioma varchar(120),
formato enum('BLANCO Y NEGRO','COLOR'),
descripcion varchar(120),
resumen varchar(255),
observaciones varchar(255),

primary key(id_pelicula)

)engine=INNODB;


create table if not exists actores(
	id_actor int not null,
    nombre varchar(50) not null,
    nacionalidad varchar(50),
    nombre_personaje varchar(50),
	
    primary key (id_actor)


)engine=INNODB;

create table if not exists directores(
	id_director int not null,
    nombre varchar(120) not null,
    fecha_nacimiento date,
    pais_origen varchar(120),
	peliculas_id_pelicula int not null,
    
    primary key (id_director),
	constraint fkdirector_peliculas 
    foreign key(peliculas_id_pelicula)
    references peliculas(id_pelicula)

)engine=INNODB;

create table if not exists actores_peliculas(
	peliculas_id_pelicula int not null,
    actores_id_actor int not null,
    
    primary key (peliculas_id_pelicula,actores_id_actor),
	constraint fkactor_peliculas_actor
    foreign key(actores_id_actor)
    references actores(id_actor),
    
    constraint fkactor_peliculas_peliculas
    foreign key(peliculas_id_pelicula)
    references peliculas(id_pelicula)

)engine=INNODB;

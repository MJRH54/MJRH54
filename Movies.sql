CREATE DATABASE  IF NOT exists Movies;
use Movies;

create table if not exists Actores(
	id_Actor int not null,
    Nombre varchar(50) not null,
    Direccion varchar(50),

    
    primary key(id_Actor)
    
)engine=innoDB;


create table if not exists TelefonoCorreoActor(
	id_telefono_correo int not null,
    id_actor int not null,
	correo varchar(50),
    telefono varchar (20),
	
    primary key(id_telefono_correo),
    constraint fkiduser_idactor
    foreign key(id_actor)
    references Actores(id_actor)

)engine=INNODB;

create table if not exists Directores(
	id_Director int not null,
    Nombre varchar(50) not null,
    Direccion varchar(50),
    
    primary key(id_Director)
    
)engine=innoDB;

create table if not exists TelefonoCorreoDirector(
	id_telefono_correo int not null,
    id_Director int not null,
	correo varchar(50),
    telefono varchar (20),
	
    primary key(id_telefono_correo),
    constraint fkiduser_idDirector
    foreign key(id_Director)
    references Directores(id_Director)

)engine=INNODB;

create table if not exists Generos(
	id_Genero int not null,
    Genero varchar(50) not null,
	
    primary key(id_Genero)
    
)engine=innoDB;


create table if not exists Peliculas(
    id_Pelicula int not null,
	id_Director int not null,
    id_Actor int not null,
    id_Genero int not null,
	Nombre varchar(50) not null,
    AnioLanzamiento varchar(40),
    
    
    
	primary key (id_Pelicula),
   
    foreign key(id_Director) REFERENCES Directores(id_Director),
	foreign key(id_Actor) REFERENCES Actores(id_Actor),
    foreign key(id_Genero) REFERENCES Generos(id_Genero)
    
)engine=innoDB;


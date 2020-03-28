CREATE DATABASE  IF NOT exists New_Library;

use New_Library;

create table if not exists Usuarios(
	id_usuario int not null,
    nombre varchar(45) not null,
    direccion varchar (120),
    
    primary key(id_usuario)
    
)engine=innoDB;	

create table if not exists TelefonoCorreo(
	id_telefono_correo int not null,
    id_Usuario int not null,
	correo varchar(50),
    telefono varchar (20),
	
    primary key(id_telefono_correo),
    constraint fkiduser_idUsuario
    foreign key(id_Usuario)
    references Usuarios(id_usuario)

)engine=INNODB;

create table if not exists Libros(
	id_libro int not null,
    id_autor int not null,
    id_editorial int not null,
    fecha_publicacion date,
    titulo varchar(50),
    
    primary key(id_libro),
    constraint fkidautor_autor
    foreign key(id_autor)
    references autores(id_autor),
	constraint fkided_editorial
    foreign key(id_editorial)
    references editorial(id_editorial)
    
)engine=innoDB;

create table if not exists autores(
	
    id_autor int not null,
    nombre_autor varchar(50),
    edad varchar(3),
    
    primary key(id_autor)

)engine=INNODB;

create table if not exists editorial(
	
    id_editorial int not null,
    nombre_editorial varchar(50),
    ciudad varchar(50),
    direccion varchar(50),
    
    primary key(id_editorial)

)engine=INNODB;

create table if not exists Prestamos(
    libros_id_libro int not null,
    usuarios_id_usuario int not null,
    fecha_salida date,
    fecha_entrada date,
    
	primary key(usuarios_id_usuario, libros_id_libro),
    
    constraint fk_id_usuario
    foreign key(usuarios_id_usuario)
    references Usuarios(id_usuario),
    
    constraint fk_id_libro
    foreign key(libros_id_libro)
    references Libros(id_libro)
    
)engine=innoDB;




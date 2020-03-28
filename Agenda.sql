create database if not exists new_agenda;

use new_agenda;

create table if not exists ocupacion(
	id_ocupacion int not null,
    ocupacion varchar(50),
    
    primary key(id_ocupacion)
)engine=INNODB;

create table if not exists contacto(
	id_contacto int not null,
    nombre varchar(30) not null,
    direccion varchar(80),
    ocupacion_id_ocupacion int not null,
    
    primary key(id_contacto),
    constraint fk_contacto_ocupacion foreign key (ocupacion_id_ocupacion) references ocupacion(id_ocupacion)
)engine=INNODB;

create table if not exists correo(
	correo_id_contacto int not null,
    telefono int,
    correo varchar(250),
    
    constraint fk_correo_contacto foreign key(correo_id_contacto) references contacto(id_contacto)
)engine=INNODB;

create table if not exists cita(
	id_cita int not null,
    fecha date,
    lugar varchar(80),
    asunto varchar(80),
    hora time,
    
    primary key(id_cita)
)engine=INNODB;

create table if not exists contacto_cita(
	cita_id_cita int not null,
    contacto_id_contacto int not null,
    
    constraint fk_cita_cita foreign key (cita_id_cita) references cita(id_cita),
    constraint fk_cita_contacto foreign key (contacto_id_contacto) references contacto(id_contacto)
)engine=INNODB;



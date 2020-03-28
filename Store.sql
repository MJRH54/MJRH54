CREATE DATABASE  IF NOT exists Store;
use Store;


create table if not exists Productos(
	id_Producto int not null,
    Descripcion varchar(50) not null,
	Nombre varchar (50),
    Precio varchar(10),
    idProveedor int not null,
    
    primary key(id_Producto),
	constraint fkidProvee_Proveedor
    foreign key(idProveedor)
    references Proveedores(idProveedor)
    
)engine=innoDB;

create table if not exists Proveedores(
	idProveedor int not null,
    nombre varchar(150),
    direccion varchar(150),
    telefono varchar(13),
    
    primary key (idProveedor)
    
)engine=INNODB;

create table if not exists Clientes(
	id_cliente int not null,
    nombre varchar(45) not null,
    direccion varchar (120),
    
    primary key(id_cliente)
    
)engine=innoDB;	

create table if not exists TelefonoCorreo(
	id_telefono_correo int not null,
    id_cliente int not null,
	correo varchar(50),
    telefono varchar (20),
	
    primary key(id_telefono_correo),
    constraint fkiduser_idcliente
    foreign key(id_cliente)
    references Clientes(id_cliente)

)engine=INNODB;

create table if not exists Pedidos(
    id_Pedido int not null,
	id_Producto int not null,
    id_Cliente int not null,
    fecha date,
    Hora datetime,
    
	primary key (id_Pedido),
   
    foreign key(id_Producto) REFERENCES Productos(id_Producto),
	foreign key(id_Cliente) REFERENCES Clientes(id_Cliente)
    
)engine=innoDB;


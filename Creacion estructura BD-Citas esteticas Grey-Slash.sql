# limpiar base

DROP DATABASE IF EXISTS sistema_citasesteticas;

#Creación de la base de datos
create database sistema_citasesteticas default character set utf8mb4 default collate utf8mb4_0900_ai_ci;

#Uso de la base de datos
use sistema_citasesteticas;

create table cliente(
id_cliente int auto_increment primary key,
nombre varchar(100) not null,
celular varchar(20) not null,
email varchar(100) unique,
direccion varchar(100) not null
);

create table profesional(
id_profesional int auto_increment primary key,
nombre varchar(100) not null,
apellido varchar(100) not null,
email varchar(100) unique,
celular varchar (20) not null,
direccion varchar(100) not null,
especialidad enum ('cejas_henna','laminado_cejas','cejas hilo y cera','lifting','retoque_pestañas',
    'depilacion con cera','cepillados','depilacion bikini completo','depilacion axilas',
    'depilacion cara','depilacion bigote','depilacion pierna completa','pestañas clasicas',
    'lifting pestañas','retoque pestañas','pestañas 3d 5d','retoque pestañas 3d 5d',
    'micropigmentacion cejas primera seccion','retoque micropigmentacion cejas',
    'micropigmentacion labios primera seccion','retoque micropigmentacion labios'
),
genero enum ('M','F'),
estado enum ('Activo','Inactivo')
);

create table propietario(
id_propietario int auto_increment primary key,
nombre varchar(100) not null,
apellidos varchar(100) not null,
tipo_documento enum ('CC','TI','Permiso','Pasaporte') not null,
num_documento varchar(50) not null,
direccion varchar(100) not null,
genero enum ('M','F'),
celular varchar(20),
email varchar(100) unique,
usuario varchar(50),
contrasena varchar (50) not null,
estado enum('Activo','Inactivo')
);

create table asistente(
id_asistente int auto_increment primary key,
nombre varchar(100) not null,
apellidos varchar(100) not null,
tipo_documento enum ('CC','TI','Permiso','Pasaporte') not null,
num_documento varchar(50) not null,
direccion varchar(100) not null,
genero enum ('M','F'),
celular varchar(20),
email varchar(100) unique,
usuario varchar(50),
contrasena varchar (50) not null,
estado enum('Activo','Inactivo')
);

create table salon_atencion(
 id_salonatencion int auto_increment primary key,
 nombre varchar(100) not null,
 hora_atencion varchar(50) not null,
 especialidades text,
 capacidad int,
 estado enum('Activo','Inactivo')
 );
 
 create table historial_visitas(
 id_historial int auto_increment primary key,
 fecha_visita datetime not null,
 motivo_visita text,
 tratamiento text,
 observaciones text,
 estado_cita enum ('Completada', 'Cancelada','Reprogramada')
 );
 
 create table recomendaciones(
 id_recomendaciones int auto_increment primary key,
 tipo_recomendacion enum('Producto','Tratamiento') not null,
 descripcion text,
 producto varchar(100), 
 frecuencia_uso varchar(100),
 tiempo_sugerido date,
 prioridad enum('Alta','Media','Baja'),
 estado enum('Pendiente','Realizada','Omitida'),
 observaciones text
 );
 
 create table citas(
 id_cita int auto_increment primary key,
 id_cliente int,
 id_profesional int,
 id_propietario int,
 id_asistente int,
 id_salonatencion int,
 id_historial int,
 id_recomendaciones int,
 fecha_hora datetime,
 motivo varchar(200) not null,
 estado enum('pendiente','completada','cancelada') default'pendiente',
 notas text,
 
 foreign key(id_cliente)
 references cliente(id_cliente),
 
 foreign key(id_profesional)
 references profesional(id_profesional),
 
 foreign key(id_propietario)
 references propietario(id_propietario),
 
 foreign key(id_asistente)
 references asistente(id_asistente),
 
 foreign key(id_salonatencion)
 references salon_atencion(id_salonatencion),
 
 foreign key(id_historial)
 references historial_visitas(id_historial),
 
 foreign key(id_recomendaciones)
 references recomendaciones(id_recomendaciones)
 );
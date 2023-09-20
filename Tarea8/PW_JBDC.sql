-- donde exista una db con el mismo nombre la elimina
drop schema if exists `programacion_web`;

-- se crear la base de datos 
create schema  if not exists `programacion_web` default  character set utf8 collate  utf8_spanish2_ci;
USE `programacion_web`; 

-- se crea la tabla
CREATE TABLE  `PERSONA`(
`nombre_usuario` text not null,
`carrera` text not null,
`no_cuenta` int(10) not null,
`direccion` text not null,
`telefono` varchar (8) not null,
`email` text not null,
`password` varchar (8) not null,
`fecha_registro` datetime not null default current_timestamp,
`permisos` int (11) not null default '2'
)engine=Innodb default charset=utf8;

-- agregamos registros
insert into `PERSONA`(`nombre_usuario`, `carrera`,`no_cuenta`,`direccion`,`telefono`,`email`,`password`,`fecha_registro`,`permisos`)values
('Aaron Velasco','ico','413112576','gloria 15','5612315','aaron@gmail.com','123456','2020-05-12 17:40:00',2),
('Jair Salvador','ico','319133471','zacahuitzco 208','5534303','jair@gmail.com','123456','2023-05-12 20:30:00',2);

-- define la llave primaria
alter table `persona`
  add primary key (`no_cuenta`);
commit;


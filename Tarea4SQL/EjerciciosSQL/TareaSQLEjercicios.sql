/*Problema #2*/

 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 sp_tables @table_owner='dbo';

 sp_columns agenda;

 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

 select * from agenda;

 drop table agenda;

 drop table agenda;

 /*Problema #3*/

 if object_id('peliculas')is not null
  drop table peliculas;

 create table peliculas(
  nombre varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 sp_columns peliculas;

 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',128,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',130,2);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (nombre, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select *from peliculas;

 /*Problema #4*/

  if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

 sp_columns peliculas;

 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

 select titulo,actor from peliculas;

 select titulo,duracion from peliculas;

 select titulo,cantidad from peliculas;

 /*Problema #5*/

 if object_id('agenda') is not null
  drop table agenda;

 create table agenda (
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 sp_columns agenda;

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Acosta', 'Ana', 'Colon 123', '4234567');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');

 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Marisa', 'Urquiza 333', '4545454');

 select *from agenda;

 select *from agenda
  where nombre='Marisa';

 select nombre,domicilio from agenda
  where apellido='Lopez';

 select nombre from agenda
  where telefono='4545454';

  /*Problema #6*/

  if object_id('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

 sp_columns articulos;

 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

 select *from articulos
  where nombre='impresora';

 select *from articulos
  where precio>=400;

 select codigo,nombre
  from articulos
  where cantidad<30;

 select nombre, descripcion
  from articulos
  where precio<>100;

  /*Problema #7*/

  if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Alvarez','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
   values('Salas','Susana','Gral. Paz 1234','4123456');

 delete from agenda
 where nombre='Juan';

 delete from agenda
 where telefono='4545454';

 select * from agenda;

 delete from agenda;

 select * from agenda;

 /*Problema #8*/

 if object_id('agenda') is not null
  drop table agenda;

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;

 update agenda set telefono='4445566'
  where telefono='4545454';

 select * from agenda;

 update agenda set nombre='Juan Jose'
  where nombre='Juan';

 select * from agenda;

 /*Problema #9*/

 if object_id('medicamentos') is not null
   drop table medicamentos;

 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

 sp_columns medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);

 select *from medicamentos
  where laboratorio is null;

 select *from medicamentos
  where laboratorio='';

 select *from medicamentos
  where precio is null;

 select *from medicamentos
  where precio=0;

 select *from medicamentos
  where laboratorio<>'';

 select *from medicamentos
  where laboratorio is not null;

 select *from medicamentos
  where precio<>0;

 select *from medicamentos
  where precio is not null;

   /*Problema #11*/

  if object_id('libros') is not null
  drop table libros;

 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );

 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 insert into libros (codigo,titulo,autor,editorial)
  values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

 update libros set codigo=1
  where titulo='Martin Fierro';

   /*Problema #12*/

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 sp_columns medicamentos;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Amoxilina 500','Bayer',15.60,100);

 update medicamentos set codigo=5
  where nombre='Bayaspirina';

 delete from medicamentos
  where codigo=3;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

 select *from medicamentos;

 /*Problema #13*/

 if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo integer identity(10,1),
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer
 );

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

 select *from medicamentos;

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Amoxilina 500','Bayer',15.60,100);

  set identity_insert medicamentos on;

 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxilina 500','Bayer',15.60,100);

 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(10,'Amoxilina 500','Bayer',15.60,100);

 select ident_seed('medicamentos');

 select ident_incr('medicamentos');

 /*Problema #14*/

 if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  legajo int identity,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30)
 );

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');

 delete from alumnos;

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select *from alumnos;

 truncate table alumnos;

 insert into alumnos (documento,nombre,domicilio)
  values('22345345','Perez Mariana','Colon 234');
 insert into alumnos (documento,nombre,domicilio)
  values('23545345','Morales Marcos','Avellaneda 348');
 insert into alumnos (documento,nombre,domicilio)
  values('24356345','Gonzalez Analia','Caseros 444');
 insert into alumnos (documento,nombre,domicilio)
  values('25666777','Torres Ramiro','Dinamarca 209');
 select *from alumnos;

 /*Problema #15*/

 if object_id('autos') is not null
  drop table autos;

 create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio float,
  primary key (patente)
 );

 insert into autos
  values('ACD123','Fiat 128','1970',15000);
 insert into autos
  values('ACG234','Renault 11','1990',40000);
 insert into autos
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos
  values('GCD123','Renault Clio','1990',70000);
 insert into autos
  values('BCC333','Renault Megane','1998',95000);
 insert into autos
  values('BVF543','Fiat 128','1975',20000);

 select *from autos
  where modelo='1990';

   /*Problema #17*/

  if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int not null,
  documento char(8),
  nombre varchar(30),
  saldo money,
  primary key (numero)
 );

 insert into cuentas(numero,documento,nombre,saldo)
  values('1234','25666777','Pedro Perez',500000.60);
 insert into cuentas(numero,documento,nombre,saldo)
  values('2234','27888999','Juan Lopez',-250000);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3344','27888999','Juan Lopez',4000.50);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3346','32111222','Susana Molina',1000);

 select *from cuentas
  where saldo<4000;

 select numero,saldo from cuentas
  where nombre='Juan Lopez';

 select *from cuentas
  where saldo<0;

 select *from cuentas
  where numero>=3000;

   /*Problema #18*/

  if object_id('alumnos') is not null
  drop table alumnos;

 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  fechanacimiento datetime
 );

 set dateformat 'dmy';

 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');

 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

 select *from alumnos where fechaingreso<'1-1-91';

 select *from alumnos where fechanacimiento is null;

 insert into alumnos values('Rosas','Romina','28888888','Avellaneda 487','03151990',null);

 set dateformat 'mdy';

 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

  /*Problema #19*/

 if object_id('cuentas') is not null
  drop table cuentas;

 create table cuentas(
  numero int identity,
  documento char(8) not null,
  nombre varchar(30),
  saldo money
 );

 insert into cuentas
  values (1,'25666777','Juan Perez',2500.50);

 insert into cuentas
  values ('25666777','Juan Perez',2500.50);

 insert into cuentas (documento,saldo)
  values ('28999777',-5500);

 insert into cuentas (numero,documento,nombre,saldo)
  values (5,'28999777','Luis Lopez',34000);

 insert into cuentas (numero,documento,nombre)
  values (3344,'28999777','Luis Lopez',34000);

 insert into cuentas (nombre, saldo)
  values ('Luis Lopez',34000);

 select *from libros;

  /*Problema #20*/

 if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 sp_columns visitantes;

 insert into visitantes (nombre, domicilio, montocompra)
  values ('Susana Molina','Colon 123',59.80);
 insert into visitantes (nombre, edad, ciudad, mail)
  values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');
 select *from visitantes;

 insert into visitantes
  values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

 insert into visitantes default values;

 select *from visitantes;

  /*Problema #21*/

if object_id ('articulos') is not null
  drop table articulos;

 create table articulos(
  codigo int identity,
  nombre varchar(20),
  descripcion varchar(30),
  precio smallmoney,
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('impresora','Epson Stylus C45',400.80,20);
 insert into articulos (nombre, descripcion, precio)
  values ('impresora','Epson Stylus C85',500);
 insert into articulos (nombre, descripcion, precio)
  values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('teclado','ingles Biswal',100,50);

 update articulos set precio=precio+(precio*0.15);

 select *from articulos;

 select nombre+','+descripcion
  from articulos;

 update articulos set cantidad=cantidad-5
 where nombre='teclado';

 select *from articulos;

  /*Problema #22*/

  if object_id ('libros') is not null
  drop table libros;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(20) default 'Desconocido',
  editorial varchar(20),
  precio decimal(6,2),
  cantidad tinyint default 0,
  primary key (codigo)
 );

 insert into libros (titulo,autor,editorial,precio)
  values('El aleph','Borges','Emece',25);
 insert into libros
  values('Java en 10 minutos','Mario Molina','Siglo XXI',50.40,100);
 insert into libros (titulo,autor,editorial,precio,cantidad)
  values('Alicia en el pais de las maravillas','Lewis Carroll','Emece',15,50);

 select titulo, autor,editorial,precio,cantidad,
  precio*cantidad as 'monto total'
  from libros;

 select titulo,autor,precio,
  precio*0.1 as descuento,
  precio-(precio*0.1) as 'precio final'
  from libros
  where editorial='Emece';

 select titulo+'-'+autor as "Título y autor"
  from libros;

   /*Problema #23*/

   if object_id('agenda') is not null
  drop table agenda;

 create table /agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

 sp_tables @table_owner='dbo';

 sp_columns agenda;

 drop table agenda;

 drop table agenda;

  /*Problema #27*/

  if object_id ('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30) not null,
  apellido varchar(20) not null,
  documento char(8),
  fechanacimiento datetime,
  fechaingreso datetime,
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados values('Ana','Acosta','22222222','1970/10/10','1995/05/05',228.50);
 insert into empleados values('Carlos','Caseres','25555555','1978/02/06','1998/05/05',309);
 insert into empleados values('Francisco','Garcia','26666666','1978/10/15','1998/10/02',250.68);
 insert into empleados values('Gabriela','Garcia','30000000','1985/10/25','2000/12/22',300.25);
 insert into empleados values('Luis','Lopez','31111111','1987/02/10','2000/08/21',350.98);

 select nombre+space(1)+upper(apellido) as nombre,
  stuff(documento,1,0,'DNI Nº ') as documento,
  stuff(sueldo,1,0,'$ ') as sueldo from empleados;

 select documento, stuff(ceiling(sueldo),1,0,'$ ') from empleados;

 select nombre,apellido from empleados
  where datename(month,fechanacimiento)='october';

 select nombre,apellido from empleados
  where datepart(year,fechaingreso)=2000;
  
   /*Problema #28*/

  if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fecha datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fecha)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Gustavo Gonzalez','GustavoGGonzalez@hotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fecha)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');

 select *from visitas
  order by fecha desc;

 select nombre,pais,datename(month,fecha)
  from visitas
  order by pais,datename(month,fecha) desc;

 select nombre,mail,
  datename(month,fecha) mes,
  datename(day,fecha) dia,
  datename(hour,fecha) hora
  from visitas
  order by 3,4,5;

 select mail, pais
  from visitas
  where datename(month,fecha)='October'
  order by 2;

   /*Problema #30*/

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(5,2),
  cantidad tinyint,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,100);
 insert into medicamentos
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos
  values('Amoxidal 500','Bayer',15.60,100);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,200);
 insert into medicamentos
  values('Bayaspirina','Bayer',2.10,150); 
 insert into medicamentos
  values('Amoxidal jarabe','Bayer',5.10,250); 

 select codigo,nombre
  from medicamentos
  where laboratorio='Roche' and
  precio<5;

 select * from medicamentos
  where laboratorio='Roche' or
  precio<5;

 select * from medicamentos
  where not laboratorio='Bayer' and
  cantidad=100;

 select * from medicamentos
  where laboratorio='Bayer' and
  not cantidad=100;

 delete from medicamentos
  where laboratorio='Bayer' and
  precio>10;

 update medicamentos set cantidad=200
  where laboratorio='Roche' and
  precio>5;

 delete from medicamentos
  where laboratorio='Bayer' or
  precio<3;

   /*Problema #31*/

  if object_id('peliculas') is not null
  drop table peliculas;

 create table peliculas(
  codigo int identity,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion tinyint,
  primary key (codigo)
 );

 insert into peliculas
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas
  values('Harry Potter y la piedra filosofal','Daniel R.',null);
 insert into peliculas
  values('Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas
  values('Mujer bonita',null,120);
 insert into peliculas
  values('Tootsie','D. Hoffman',90);
 insert into peliculas (titulo)
  values('Un oso rojo');

 select *from peliculas
  where actor is null;

 update peliculas set duracion=0
  where duracion is null;

 delete from peliculas
  where actor is null and
  duracion=0;

 select * from peliculas;

  /*Problema #32*/

 if object_id('visitas') is not null
  drop table visitas;

 create table visitas (
  numero int identity,
  nombre varchar(30) default 'Anonimo',
  mail varchar(50),
  pais varchar (20),
  fechayhora datetime,
  primary key(numero)
);

 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Ana Maria Lopez','AnaMaria@hotmail.com','Argentina','2006-10-10 10:10');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Gustavo Gonzalez','GustavoGGonzalez@gotmail.com','Chile','2006-10-10 21:30');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-10-11 15:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-10-12 08:15');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Fabiola Martinez','MartinezFabiola@hotmail.com','Mexico','2006-09-12 20:45');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@gmail.com','Argentina','2006-09-12 16:20');
 insert into visitas (nombre,mail,pais,fechayhora)
  values ('Juancito','JuanJosePerez@hotmail.com','Argentina','2006-09-15 16:25');
 insert into visitas (nombre,mail,pais)
  values ('Federico1','federicogarcia@xaxamail.com','Argentina');

 select *from visitas
  where fechayhora between '2006-09-12' and '2006-10-11';

 select *from visitas
  where numero between 2 and 5;

   /*Problema #33*/

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01');
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01');
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01');
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01');
 insert into medicamentos 
  values('Bayaspirina','Bayer',2.10,150,'2009-12-01'); 
 insert into medicamentos 
  values('Amoxidal jarabe','Bayer',5.10,250,'2010-10-01'); 

 select nombre,precio from medicamentos
  where laboratorio in ('Bayer','Bago');

 select *from medicamentos
  where cantidad between 1 and 5;

 select *from medicamentos
  where cantidad in (1,2,3,4,5);

   /*Problema #34*/

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso datetime,
  seccion varchar(20),
  sueldo decimal(6,2),
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','1990-10-08','Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','1995-12-18','Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','2005-05-15','Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','1999-02-12','Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','2002-09-22','Contaduria',630.70);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','1990-10-08','Administracion',400);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','1990-05-28','Sistemas',800);

 select *from empleados
  where nombre like '%Perez%';

 select *from empleados
  where domicilio like 'Co%8%';

 select *from empleados
  where documento like '%[02468]';

 select *from empleados
  where documento like '[^13]%' and
  nombre like '%ez';

 select nombre from empleados
  where nombre like '%[yj]%';

 select nombre,seccion from empleados
  where seccion like '[SG]_______';

 select nombre,seccion from empleados
  where seccion not like '[SG]%';

 select nombre,sueldo from empleados
  where sueldo not like '%.00';

 select *from empleados
  where fechaingreso like '%1990%';

   /*Problema #35*/

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2009-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2009-12-15',null); 

 select count(*)
  from medicamentos;

 select count(laboratorio)
   from medicamentos;

 select count(precio) as 'Con precio',
  count(cantidad) as 'Con cantidad'
  from medicamentos;

 select count(precio)
  from medicamentos
  where laboratorio like 'B%';

 select count(numerolote) from medicamentos;

  /*Problema #36*/

  if object_id('medicamentos') is not null
  drop table medicamentos;

 create table medicamentos(
  codigo int identity,
  nombre varchar(20),
  laboratorio varchar(20),
  precio decimal(6,2),
  cantidad tinyint,
  fechavencimiento datetime not null,
  numerolote int default null,
  primary key(codigo)
 );

 insert into medicamentos
  values('Sertal','Roche',5.2,1,'2005-02-01',null);
 insert into medicamentos 
  values('Buscapina','Roche',4.10,3,'2006-03-01',null);
 insert into medicamentos 
  values('Amoxidal 500','Bayer',15.60,100,'2007-05-01',null);
 insert into medicamentos
  values('Paracetamol 500','Bago',1.90,20,'2008-02-01',null);
 insert into medicamentos 
  values('Bayaspirina',null,2.10,null,'2009-12-01',null); 
  insert into medicamentos 
  values('Amoxidal jarabe','Bayer',null,250,'2009-12-15',null); 

 select count_big(*)
  from medicamentos;

 select count_big(distinct laboratorio)
   from medicamentos;

 select count_big(precio) as 'Con precio',
  count_big(cantidad) as 'Con cantidad'
  from medicamentos;

   /*Problema #38*/

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados(
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2),
  cantidadhijos tinyint,
  primary key(documento)
 );

 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0);
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1);
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4);
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null);

 select count(*)
  from empleados;

 select count(sueldo)
  from empleados
  where seccion='Secretaria';

 select max(sueldo) as 'Mayor sueldo',
  min(sueldo) as 'Menor sueldo'
  from empleados;

 select max(cantidadhijos)
  from empleados
  where nombre like '%Perez%';

 select avg(sueldo)
  from empleados;

 select avg(sueldo)
  from empleados
  where seccion='Secretaria';

 select avg(cantidadhijos)
  from empleados
  where seccion='Sistemas';

   /*Problema #39*/

  if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

 insert into visitantes
  values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
 insert into visitantes
  values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
 insert into visitantes
  values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
 insert into visitantes (nombre, edad,sexo,telefono, mail)
  values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
 insert into visitantes (nombre, ciudad, montocompra)
  values ('Alejandra Gonzalez','La Falda',280.50);
 insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
  values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
 insert into visitantes
  values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
 insert into visitantes
  values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);

 select ciudad, count(*)
  from visitantes
  group by ciudad;

 select ciudad, count(telefono)
  from visitantes
  group by ciudad;

 select sexo, sum(montocompra)
  from visitantes
  group by sexo;

 select sexo,ciudad,
  max(montocompra) as mayor,
  min(montocompra) as menor
  from visitantes
  group by sexo,ciudad;

 select ciudad,
  avg(montocompra) as 'promedio de compras'
  from visitantes
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by ciudad;

 select ciudad,
  count(*) as 'cantidad con mail'
  from visitantes
  where mail is not null and
  mail<>'no tiene'
  group by all ciudad

   /*Problema #40*/

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  telefono varchar(11),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia;

 select ciudad, provincia,
  count(*) as cantidad
  from clientes
  group by ciudad,provincia
  having count(*)>1;

 select ciudad, count(*)
  from clientes
  where domicilio like '%San Martin%'
  group by all ciudad
  having count(*)<2 and
  ciudad <> 'Cordoba';

   /*Problema #41*/

   if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  estado varchar (20),
  pais varchar(20),
  primary key(codigo)
 );

 insert into clientes
  values ('Lopez Marcos','Colon 111', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Perez Ana','San Martin 222', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333', 'Carlos Paz','Cordoba','Argentina');
 insert into clientes
  values ('Perez Luis','Sarmiento 444', 'Rosario','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 987', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Gomez Ines','San Martin 666', 'Santa Fe','Santa Fe','Argentina');
 insert into clientes
  values ('Lopez Carlos','Irigoyen 888', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Ramos Betina','San Martin 999', 'Cordoba','Cordoba','Argentina');
 insert into clientes
  values ('Fernando Salas','Mariano Osorio 1234', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('German Rojas','Allende 345', 'Valparaiso','Region V','Chile');
 insert into clientes
  values ('Ricardo Jara','Pablo Neruda 146', 'Santiago','Region metropolitana','Chile');
 insert into clientes
  values ('Joaquin Robles','Diego Rivera 147', 'Guadalajara','Jalisco','Mexico');

 select pais,count(*) as cantidad
  from clientes
  group by pais with rollup;

 select pais,estado,
  count(*) as cantidad
  from clientes
  group by pais,estado with rollup;

 select pais,estado,ciudad,
  count(*) as cantidad
  from clientes
  group by pais,estado,ciudad
  with rollup;

   /*Problema #42*/

  if object_id('ventas') is not null
  drop table ventas;

 create table ventas(
  numero int identity,
  montocompra decimal(6,2),
  tipopago char(1),--c=contado, t=tarjeta
  vendedor varchar(30),
  primary key (numero)
 );

 insert into ventas
  values(100.50,'c','Marisa Perez');
 insert into ventas
  values(200,'c','Marisa Perez');
 insert into ventas
  values(50,'t','Juan Lopez');
 insert into ventas
  values(220,'c','Juan Lopez');
 insert into ventas
  values(150,'t','Marisa Perez');
 insert into ventas
  values(550.80,'c','Marisa Perez');
 insert into ventas
  values(300,'t','Juan Lopez');
 insert into ventas
  values(25,'c','Marisa Perez');

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with rollup;

 select vendedor,tipopago,
  count(*) as cantidad
  from ventas
  group by vendedor,tipopago
  with cube;

   /*Problema #43*/

   if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  sexo char(1),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20),
  primary key (documento)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','m','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','f','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','m','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','m','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez',null,'c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres',null,'s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez','f',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia','m',null,'Administracion');

 select sexo,estadocivil,
  count(*) as cantidad
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with rollup;

 select sexo,estadocivil,
  count(*) as cantidad,
  grouping(sexo) as 'resumen sexo',
  grouping(estadocivil) as 'resumen estado civil'
  from empleados
  group by sexo,estadocivil
  with cube;

   /*Problema #44*/

  if object_id('inmuebles') is not null
  drop table inmuebles;

 create table inmuebles (
  documento varchar(8) not null,
  nombre varchar(30),
  domicilio varchar(20),
  barrio varchar(20),
  ciudad varchar(20),
  tipo char(1),--b=baldio, e: edificado
  superficie decimal (8,2),
  monto decimal (8,2)
 );

 insert into inmuebles
  values ('11111111','Alberto Acosta','Avellaneda 800','Centro','Cordoba','e',100,1200);
 insert into inmuebles
  values ('11111111','Alberto Acosta','Sarmiento 245','Gral. Paz','Cordoba','e',200,2500);
 insert into inmuebles
  values ('22222222','Beatriz Barrios','San Martin 202','Centro','Cordoba','e',250,1900);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Paso 1234','Alberdi','Cordoba','b',200,1000);
 insert into inmuebles
  values ('33333333','Carlos Caseres','Guemes 876','Alberdi','Cordoba','b',300,1500);
 insert into inmuebles
  values ('44444444','Diana Dominguez','Calderon 456','Matienzo','Cordoba','b',200,800);
 insert into inmuebles
  values ('55555555','Estela Fuentes','San Martin 321','Flores','Carlos Paz','e',500,4500);
 insert into inmuebles
  values ('55555555','Estela Fuentes','Lopez y Planes 853','Alberdi','Cordoba','e',350,2200);

 select *from inmuebles
 compute avg(monto);

 select *from inmuebles
  compute avg(superficie),sum(monto);

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio,ciudad;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,barrio;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento;

 select *from inmuebles
  order by documento,barrio,ciudad
  compute avg(superficie),sum(monto)
  by documento,ciudad;

 select *from inmuebles
  order by documento
  compute sum(monto)
  compute avg(monto)
  by documento;

   /*Problema #45*/

  if object_id('clientes') is not null
  drop table clientes;

 create table clientes (
  codigo int identity,
  nombre varchar(30) not null,
  domicilio varchar(30),
  ciudad varchar(20),
  provincia varchar (20),
  primary key(codigo)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe');
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba');
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones');

 select distinct provincia from clientes;

 select count(distinct provincia) as cantidad
  from clientes;

 select distinct ciudad from clientes;

 select count(distinct ciudad) from clientes;

 select distinct ciudad from clientes
  where provincia='Cordoba';

 select provincia,count(distinct ciudad)
  from clientes
  group by provincia;

   /*Problema #47*/

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  estadocivil char(1),--c=casado, s=soltero,v=viudo
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','c','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','c','Administracion');
 insert into empleados
  values ('24444444','Carlos Fuentes','s','Administracion');
 insert into empleados
  values ('25555555','Daniel Garcia','s','Sistemas');
 insert into empleados
  values ('26666666','Ester Juarez','c','Sistemas');
 insert into empleados
  values ('27777777','Fabian Torres','s','Sistemas');
 insert into empleados
  values ('28888888','Gabriela Lopez',null,'Sistemas');
 insert into empleados
  values ('29999999','Hector Garcia',null,'Administracion');

 select top 5 *from empleados;

 select top 4 nombre,seccion
  from empleados
  order by seccion;

 select top 4 with ties nombre,seccion
  from empleados
  order by seccion;

 select top 4 nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

 select top 4 with ties nombre,estadocivil,seccion
  from empleados
  order by estadocivil,seccion;

   /*Problema #48*/

  if object_id('consultas') is not null
  drop table consultas;

 create table consultas(
  fechayhora datetime not null,
  medico varchar(30) not null,
  documento char(8) not null,
  paciente varchar(30),
  obrasocial varchar(30),
  primary key(fechayhora,medico)
 );

 insert into consultas
  values ('2006/11/05 8:00','Lopez','12222222','Acosta Betina','PAMI');
 insert into consultas
  values ('2006/11/05 8:30','Lopez','23333333','Fuentes Carlos','PAMI');

 insert into consultas
  values ('2006/11/05 8:00','Perez','34444444','Garcia Marisa','IPAM');
 insert into consultas
  values ('2006/11/05 8:00','Duarte','45555555','Pereyra Luis','PAMI');

 insert into consultas
  values ('2006/11/05 8:00','Perez','23333333','Fuentes Carlos','PAMI');

   /*Problema #49*/

  if object_id('visitantes') is not null
  drop table visitantes;

 create table visitantes(
  numero int identity,
  nombre varchar(30),
  edad tinyint,
  domicilio varchar(30),
  ciudad varchar(20),
  montocompra decimal (6,2) not null
 );

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_montocompra
  default 0
  for montocompra;

 insert into visitantes
  values ('Susana Molina',35,'Colon 123',default,59.80);
 insert into visitantes (nombre,edad,domicilio)
  values ('Marcos Torres',29,'Carlos Paz');
 insert into visitantes
  values ('Mariana Juarez',45,'Carlos Paz',null,23.90);

 select *from visitantes;

 sp_helpconstraint visitantes;

 alter table visitantes
  add constraint DF_visitantes_ciudad
  default 'Cordoba'
  for ciudad;

 alter table visitantes
  add constraint DF_visitantes_numero
  default 0
  for numero;

   /*Problema #50*/

   if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  fechanacimiento datetime,
  cantidadhijos tinyint,
  seccion varchar(20),
  sueldo decimal(6,2)
 );

 alter table empleados
 add constraint CK_empelados_sueldo_positivo
 check (sueldo>0);

 insert into empleados values ('22222222','Alberto Lopez','1965/10/05',1,'Sistemas',1000);
 insert into empleados values ('33333333','Beatriz Garcia','1972/08/15',2,'Administracion',3000);
 insert into empleados values ('34444444','Carlos Caseres','1980/10/05',0,'Contaduría',6000);

 alter table empleados
 add constraint CK_empleados_sueldo_maximo
 check (sueldo<=5000);

 delete from empleados where sueldo=6000;

 alter table empleados
 add constraint CK_empleados_sueldo_maximo
 check (sueldo<=5000); 

 alter table empleados
 add constraint CK_fechanacimiento_actual
 check (fechanacimiento<getdate());

 alter table empleados
 add constraint CK_empleados_seccion_lista
 check (seccion in ('Sistemas','Administracion','Contaduria'));

 alter table empleados
 add constraint CK_cantidadhijos_valores
 check (cantidadhijos between 0 and 15);

 sp_helpconstraint empleados;

 insert into empleados
  values ('24444444','Carlos Fuentes','1980/02/05',2,'Administracion',-1500);

 insert into empleados
  values ('25555555','Daniel Garcia','2007/05/05',2,'Sistemas',1550);

 update empleados set cantidadhijos=21 where documento='22222222';

 update empleados set seccion='Recursos' where documento='22222222';

 alter table empleados
 add constraint CK_seccion_letrainicial
 check (seccion like '%B');

  /*Problema #51*/

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8),
  nombre varchar(30),
  seccion varchar(20),
  sueldo decimal(6,2)
 );

 insert into empleados
  values ('22222222','Alberto Acosta','Sistemas',-10);
 insert into empleados
  values ('33333333','Beatriz Benitez','Recursos',3000);
 insert into empleados
  values ('34444444','Carlos Caseres','Contaduria',4000);

 alter table empleados
 add constraint CK_empleados_sueldo_positivo
 check (sueldo>=0);

 alter table empleados
 with nocheck
 add constraint CK_empleados_sueldo_positivo
 check (sueldo>=0);

 insert into empleados
  values ('35555555','Daniel Duarte','Administracion',-2000);

 alter table empleados
  nocheck constraint CK_empleados_sueldo_positivo;
 insert into empleados
  values ('35555555','Daniel Duarte','Administracion',2000);

 alter table empleados
 add constraint CK_empleados_seccion_lista
 check (seccion in ('Sistemas','Administracion','Contaduria'));

 alter table empleados
 with nocheck
 add constraint CK_empleados_seccion_lista
 check (seccion in ('Sistemas','Administracion','Contaduria'));

 sp_helpconstraint empleados;

 alter table empleados
  check constraint CK_empleados_sueldo_positivo;

 update empleados set seccion='Recursos' where nombre='Carlos Caseres';

 alter table empleados
  nocheck constraint CK_empleados_seccion_lista;
 update empleados set seccion='Recursos' where nombre='Carlos Caseres';

  /*Problema #53*/

  if object_id('empleados') is not null
  drop table empleados;

 create table empleados (
  documento varchar(8) not null,
  nombre varchar(30),
  seccion varchar(20)
 );

 insert into empleados
  values ('22222222','Alberto Lopez','Sistemas');
 insert into empleados
  values ('23333333','Beatriz Garcia','Administracion');
 insert into empleados
  values ('23333333','Carlos Fuentes','Administracion');

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);
 delete from empleados
  where nombre='Carlos Fuentes';

 alter table empleados
 add constraint PK_empleados_documento
 primary key(documento);

 update empleados set documento='22222222'
  where documento='23333333';

 alter table empleados
 add constraint PK_empleados_nombre
 primary key(nombre);

 insert into empleados values(null,'Marcelo Juarez','Sistemas');

 alter table empleados
  add constraint DF_empleados_documento
  default '00000000'
  for documento;

 insert into empleados (nombre,seccion) values('Luis Luque','Sistemas'); 

 select *from empleados;

  insert into empleados (nombre,seccion) values('Ana Fuentes','Sistemas'); 

 sp_helpconstraint empleados;

  /*Problema #54*/

 if object_id('remis') is not null
  drop table remis;

 create table remis(
  numero tinyint identity,
  patente char(6),
  marca varchar(15),
  modelo char(4)
 );

 insert into remis values('ABC123','Renault clio','1990');
 insert into remis values('DEF456','Peugeot 504','1995');
 insert into remis values('DEF456','Fiat Duna','1998');
 insert into remis values('GHI789','Fiat Duna','1995');
 insert into remis values(null,'Fiat Duna','1995');

 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 delete from remis where numero=3;
 alter table remis
 add constraint UQ_remis_patente
 unique(patente); 

 insert into remis values('ABC123','Renault 11','1995');

 insert into remis values(null,'Renault 11','1995');

 sp_helpconstraint remis;

  /*Problema #55*/

 if object_id('vehiculos') is not null
  drop table vehiculos;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 alter table vehiculos
 add constraint CK_vehiculos_tipo
 check (tipo in ('a','m'));

 alter table vehiculos
  add constraint DF_vehiculos_tipo
  default 'a'
  for tipo;

 alter table vehiculos
  add constraint CK_vehiculos_patente_patron
  check (patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]');

 alter table vehiculos
  add constraint PK_vehiculos_patentellegada
  primary key(patente,horallegada);

 insert into vehiculos values('SDR456','a','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 10:10',null);

 insert into vehiculos values('SDR456','m','2005/10/10 12:10',null);

 insert into vehiculos values('SDR111','m','2005/10/10 10:10',null);

 sp_helpconstraint vehiculos;

 alter table vehiculos
  drop DF_vehiculos_tipo;

 sp_helpconstraint vehiculos;

 alter table vehiculos
  drop PK_vehiculos_patentellegada, CK_vehiculos_tipo;

 sp_helpconstraint vehiculos;

  /*Problema #57*/

  if object_id('vehiculos') is not null
  drop table vehiculos;

 if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
 if object_id ('RG_horallegada') is not null
   drop rule RG_horallegada;
 if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
 if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;
 if object_id ('RG_menor_fechaactual') is not null
   drop rule RG_menor_fechaactual;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 insert into vehiculos values ('AAA111','a','1990-02-01 08:10',null);
 insert into vehiculos values ('BCD222','m','1990-02-01 08:10','1990-02-01 10:10');
 insert into vehiculos values ('BCD222','m','1990-02-01 12:00',null);
 insert into vehiculos values ('CC1234','a','1990-02-01 12:00',null);

 create rule RG_patente_patron
 as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

 sp_help;

 sp_helpconstraint vehiculos;

 sp_bindrule RG_patente_patron,'vehiculos.patente';

 select *from empleados;

 insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

 create rule RG_vehiculos_tipo
 as @tipo in ('a','m');

 sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_vehiculos_tipo2
 as @tipo in ('a','c','m');

 sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

 update vehiculos set tipo='c' where patente='AAA111';

 create rule RG_menor_fechaactual
 as @fecha <= getdate();

 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horallegada';
 exec sp_bindrule RG_menor_fechaactual, 'vehiculos.horasalida';

 insert into vehiculos values ('NOP555','a','1990-02-01 10:10','1990-02-01 08:30');

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 delete from vehiculos where patente='NOP555';

 alter table vehiculos
 add constraint CK_vehiculos_llegada_salida
 check(horallegada<=horasalida);

 alter table vehiculos
 add constraint DF_vehiculos_tipo
 default 'b'
 for tipo;

 insert into vehiculos values ('STU456',default,'1990-02-01 10:10','1990-02-01 15:30');

 sp_helpconstraint vehiculos;

  /*Problema #58*/

 if object_id('vehiculos') is not null
  drop table vehiculos;

 if object_id ('RG_patente_patron') is not null
   drop rule RG_patente_patron;
 if object_id ('RG_vehiculos_tipo') is not null
   drop rule RG_vehiculos_tipo;
 if object_id ('RG_vehiculos_tipo2') is not null
   drop rule RG_vehiculos_tipo2;

 create table vehiculos(
  patente char(6) not null,
  tipo char(1),--'a'=auto, 'm'=moto
  horallegada datetime not null,
  horasalida datetime
 );

 create rule RG_patente_patron
 as @patente like '[A-Z][A-Z][A-Z][0-9][0-9][0-9]';

 sp_bindrule RG_patente_patron,'vehiculos.patente';

 insert into vehiculos values ('FGHIJK','a','1990-02-01 18:00',null);

 create rule RG_vehiculos_tipo
 as @tipo in ('a','m');

 sp_bindrule RG_vehiculos_tipo, 'vehiculos.tipo';

 insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

 create rule RG_vehiculos_tipo2
 as @tipo in ('a','c','m');

 sp_bindrule RG_vehiculos_tipo2, 'vehiculos.tipo';

 insert into vehiculos values('AAA111','c','2001-10-10 10:10',NULL);

 drop rule RG_vehiculos_tipo2;

 drop rule RG_vehiculos_tipo;

 drop rule RG_patente_patron;

 exec sp_unbindrule 'vehiculos.patente';

 sp_helpconstraint vehiculos;

 sp_help;

 drop rule RG_patente_patron;

 sp_help;

  /*Problema #62*/

 if object_id ('clientes') is not null
  drop table clientes;

 if object_id ('VP_legajo_patron') is not null
   drop default VP_legajo_patron;
 if object_id ('RG_legajo_patron') is not null
   drop rule RG_legajo_patron;
 if object_id ('RG_legajo') is not null
   drop rule RG_legajo;
 if object_id ('VP_datodesconocido') is not null
   drop default VP_datodesconocido;
 if object_id ('VP_fechaactual') is not null
   drop default VP_fechaactual;

 create table clientes(
  legajo char(4),
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(15),
  provincia varchar(20) default 'Cordoba',
  fechaingreso datetime
 );

 create rule RG_legajo_patron
 as @valor like '[A-Z][A-Z][0-9][0-9]';

 exec sp_bindrule RG_legajo_patron,'clientes.legajo';

  create default VP_legajo_patron
  as 'AA00';

 exec sp_bindefault VP_legajo_patron,'clientes.legajo';

 create default VP_datodesconocido
  as '??';

 exec sp_bindefault VP_datodesconocido,'clientes.domicilio';

 exec sp_bindefault VP_datodesconocido,'clientes.ciudad';

 insert into clientes values('GF12','Ana Perez',default,default,'Cordoba','2001-10-10');
 select *from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.provincia';

 create default VP_fechaactual
  as getdate();

 exec sp_bindefault VP_fechaactual,'clientes.fechaingreso';

 insert into clientes default values;
 select *from clientes;

 exec sp_bindefault VP_datodesconocido,'clientes.fechaingreso';

 insert into clientes default values;

 create rule RG_legajo
 as @valor like 'B%';

 exec sp_bindrule RG_legajo,'clientes.legajo';

 insert into clientes values (default,'Luis Garcia','Colon 876','Cordoba','Cordoba','2001-10-10');

  /*Problema #63*/

 if object_id ('libros') is not null
  drop table libros;

 if object_id ('VP_cero') is not null
   drop default VP_cero;
 if object_id ('VP_desconocido') is not null
   drop default VP_desconocido;
 if object_id ('RG_positivo') is not null
   drop rule RG_positivo;

 create table libros(
  codigo int identity,
  titulo varchar(40) not null,
  autor varchar(30),
  editorial varchar(20),
  precio decimal(5,2),
  cantidad smallint
 );

 create rule RG_positivo
 as @valor >=0;

 exec sp_bindrule RG_positivo,'libros.precio';

 exec sp_bindrule RG_positivo,'libros.cantidad';

  create default VP_cero
  as 0;

 exec sp_bindefault VP_cero,'libros.precio';

 exec sp_bindefault VP_cero,'libros.cantidad';

  create default VP_desconocido
  as 'Desconocido';

 exec sp_bindefault VP_desconocido,'libros.autor';

 exec sp_bindefault VP_desconocido,'libros.editorial';

-- sp_help;

 sp_helpconstraint libros;

 insert into libros (titulo) values('Aprenda PHP');
 select *from libros;

 exec sp_unbindefault 'libros.precio';

 insert into libros (titulo) values('Matematica estas ahi');
 select *from libros;

 sp_helpconstraint libros;

 sp_help VP_cero;

 drop default VP_cero;

 exec sp_unbindefault 'libros.cantidad';

 sp_helpconstraint libros;

 sp_help VP_cero;

 drop default VP_cero;

 sp_help VP_cero;

  /*Problema #64*/

 if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 insert into alumnos values ('A123','22222222','Perez','Patricia',5.50);
 insert into alumnos values ('A234','23333333','Lopez','Ana',9);
 insert into alumnos values ('A345','24444444','Garcia','Carlos',8.5);
 insert into alumnos values ('A348','25555555','Perez','Daniela',7.85);
 insert into alumnos values ('A457','26666666','Perez','Fabian',3.2);
 insert into alumnos values ('A589','27777777','Gomez','Gaston',6.90);

 create unique clustered index I_alumnos_apellido
 on alumnos(apellido);

 create clustered index I_alumnos_apellido
 on alumnos(apellido); 

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key nonclustered (legajo);

 sp_helpindex alumnos;

 sp_helpconstraint libros;

 create unique nonclustered index I_alumnos_documento
 on alumnos(documento);

 insert into alumnos values ('A789','27777777','Morales','Hector',8);

 sp_helpindex alumnos;

 create index I_alumnos_apellidonombre
  on alumnos(apellido,nombre);

 select name from sysindexes
  where name like '%alumnos%';

 alter table alumnos
  add constraint UQ_alumnos_documento
  unique (documento);

 sp_helpconstraint alumnos;

 sp_helpindex alumnos;

 select name from sysindexes
  where name like '%alumnos%';

 select name from sysindexes
  where name like 'I_%';

   /*Problema #66*/

  if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido); 

 sp_helpindex alumnos;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido,nombre)
  with drop_existing;

 exec sp_helpindex alumnos;

 alter table alumnos
  add constraint UQ_alumnos_documento
  unique nonclustered (documento);

  sp_helpindex alumnos;

 create clustered index UQ_alumnos_documento
  on alumnos(documento)
  with drop_existing;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo); 

 sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 exec sp_helpindex alumnos;

 create nonclustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create clustered index I_alumnos_apellido
  on alumnos(apellido)
  with drop_existing;

 create unique clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 sp_helpindex alumnos;

 create clustered index I_alumnos_legajo
  on alumnos(legajo)
  with drop_existing;

 sp_helpindex alumnos;

  /*Problema #67*/

  if object_id('alumnos') is not null
  drop table alumnos;
 create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  apellido varchar(30),
  nombre varchar(30),
  notafinal decimal(4,2)
 );

 create nonclustered index I_alumnos_apellido
  on alumnos(apellido);

 alter table alumnos
  add constraint PK_alumnos_legajo
  primary key clustered (legajo);

 sp_helpindex alumnos;

 drop index PK_alumnos_legajo;

 drop index I_alumnos_apellido;

 drop index alumnos.I_alumnos_apellido;

 sp_helpindex alumnos;

 if exists (select name from sysindexes
  where name = 'I_alumnos_apellido')
   drop index alumnos.I_alumnos_apellido;

 alter table alumnos
  drop PK_alumnos_legajo;

 sp_helpindex alumnos;

   /*Problema #68*/

 if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','Ibera',3);

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo;

 select c.nombre,domicilio,ciudad,p.nombre
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  order by p.nombre;

 select c.nombre,domicilio,ciudad
  from clientes as c
  join provincias as p
  on c.codigoprovincia=p.codigo
  where p.nombre='Santa Fe';

   /*Problema #69*/

  if (object_id('clientes')) is not null
   drop table clientes;
  if (object_id('provincias')) is not null
   drop table provincias;

 create table clientes (
  codigo int identity,
  nombre varchar(30),
  domicilio varchar(30),
  ciudad varchar(20),
  codigoprovincia tinyint not null,
  primary key(codigo)
 );

 create table provincias(
  codigo tinyint identity,
  nombre varchar(20),
  primary key (codigo)
 );

 insert into provincias (nombre) values('Cordoba');
 insert into provincias (nombre) values('Santa Fe');
 insert into provincias (nombre) values('Corrientes');

 insert into clientes values ('Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values ('Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values ('Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values ('Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values ('Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values ('Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values ('Garcia Luis','Sucre 475','Santa Rosa',5);

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from provincias as p
  left join clientes as c
  on codigoprovincia = p.codigo;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is not null;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.codigo is null
  order by c.nombre;

 select c.nombre,domicilio,ciudad, p.nombre
  from clientes as c
  left join provincias as p
  on codigoprovincia = p.codigo
  where p.nombre='Cordoba';

   /*Problema #70*/

   if (object_id('deportes')) is not null
  drop table deportes;
 if (object_id('inscriptos')) is not null
  drop table inscriptos;
 create table deportes(
  codigo tinyint identity,
  nombre varchar(30),
  profesor varchar(30),
  primary key (codigo)
 );
 create table inscriptos(
  documento char(8),
  codigodeporte tinyint not null,
  matricula char(1) --'s'=paga 'n'=impaga
 );

 insert into deportes values('tenis','Marcelo Roca');
 insert into deportes values('natacion','Marta Torres');
 insert into deportes values('basquet','Luis Garcia');
 insert into deportes values('futbol','Marcelo Roca');
 
 insert into inscriptos values('22222222',3,'s');
 insert into inscriptos values('23333333',3,'s');
 insert into inscriptos values('24444444',3,'n');
 insert into inscriptos values('22222222',2,'s');
 insert into inscriptos values('23333333',2,'s');
 insert into inscriptos values('22222222',4,'n'); 
 insert into inscriptos values('22222222',5,'n'); 

 select documento,d.nombre,matricula
  from inscriptos as i
  join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo;

 select documento,d.nombre,matricula
  from deportes as d
  right join inscriptos as i
  on codigodeporte=codigo;

 select nombre
  from deportes as d
  left join inscriptos as i
  on codigodeporte=codigo
  where codigodeporte is null;

 select documento
  from inscriptos as i
  left join deportes as d
  on codigodeporte=codigo
  where codigo is null;

 select documento,nombre,profesor,matricula
  from inscriptos as i
  full join deportes as d
  on codigodeporte=codigo;

   /*Problema #71*/

   if object_id('mujeres') is not null
  drop table mujeres;
 if object_id('varones') is not null
  drop table varones;
 create table mujeres(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );
 create table varones(
  nombre varchar(30),
  domicilio varchar(30),
  edad int
 );

 insert into mujeres values('Maria Lopez','Colon 123',45);
 insert into mujeres values('Liliana Garcia','Sucre 456',35);
 insert into mujeres values('Susana Lopez','Avellaneda 98',41);

 insert into varones values('Juan Torres','Sarmiento 755',44);
 insert into varones values('Marcelo Oliva','San Martin 874',56);
 insert into varones values('Federico Pereyra','Colon 234',38);
 insert into varones values('Juan Garcia','Peru 333',50);

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad>40 and
  v.edad>40;

 select m.nombre,m.edad,v.nombre,v.edad
  from mujeres as m
  cross join varones as v
  where m.edad-v.edad between -10 and 10;

   if object_id('clientes') is not null
  drop table clientes;

 create table clientes(
  nombre varchar(30),
  sexo char(1),--'f'=femenino, 'm'=masculino
  edad int,
  domicilio varchar(30)
 );

 insert into clientes values('Maria Lopez','f',45,'Colon 123');
 insert into clientes values('Liliana Garcia','f',35,'Sucre 456');
 insert into clientes values('Susana Lopez','f',41,'Avellaneda 98');
 insert into clientes values('Juan Torres','m',44,'Sarmiento 755');
 insert into clientes values('Marcelo Oliva','m',56,'San Martin 874');
 insert into clientes values('Federico Pereyra','m',38,'Colon 234');
 insert into clientes values('Juan Garcia','m',50,'Peru 333');

 select cm.nombre,cm.edad,cv.nombre,cv.edad
  from clientes as cm
  cross join clientes cv
  where cm.sexo='f' and cv.sexo='m';

 select cm.nombre,cm.edad,cv.nombre,cv.edad
  from clientes as cm
  join clientes cv
  on cm.nombre<>cv.nombre
  where cm.sexo='f' and cv.sexo='m';

 select cm.nombre,cm.edad,cv.nombre,cv.edad
  from clientes as cm
  cross join clientes cv
  where cm.sexo='f' and cv.sexo='m' and
  cm.edad-cv.edad between -5 and 5;

     /*Problema #72*/

   if object_id('visitantes') is not null
  drop table visitantes;
 if object_id('ciudades') is not null
  drop table ciudades;

 create table visitantes(
  nombre varchar(30),
  edad tinyint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  codigociudad tinyint not null,
  mail varchar(30),
  montocompra decimal (6,2)
 );

 create table ciudades(
  codigo tinyint identity,
  nombre varchar(20)
 );
 
 insert into ciudades values('Cordoba');
 insert into ciudades values('Carlos Paz');
 insert into ciudades values('La Falda');
 insert into ciudades values('Cruz del Eje');

 insert into visitantes values 
   ('Susana Molina', 35,'f','Colon 123', 1, null,59.80);
 insert into visitantes values 
   ('Marcos Torres', 29,'m','Sucre 56', 1, 'marcostorres@hotmail.com',150.50);
 insert into visitantes values 
   ('Mariana Juarez', 45,'f','San Martin 111',2,null,23.90);
 insert into visitantes values 
   ('Fabian Perez',36,'m','Avellaneda 213',3,'fabianperez@xaxamail.com',0);
 insert into visitantes values 
   ('Alejandra Garcia',28,'f',null,2,null,280.50);
 insert into visitantes values 
   ('Gaston Perez',29,'m',null,5,'gastonperez1@gmail.com',95.40);
 insert into visitantes values 
   ('Mariana Juarez',33,'f',null,2,null,90);

 select c.nombre,
  count(*) as cantidad
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre;

 select c.nombre,sexo,
  avg(montocompra) as 'promedio de compra'
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre,sexo;

 select c.nombre,
  count(mail) as 'tienen mail'
  from ciudades as c
  join visitantes as v
  on codigociudad=c.codigo
  group by c.nombre;

 select c.nombre,
  max(montocompra)
  from visitantes as v
  join ciudades as c
  on codigociudad=c.codigo
  group by c.nombre;

   if object_id('socios') is not null
  drop table socios;
 if object_id('deportes') is not null
  drop table deportes;
 if object_id('inscriptos') is not null
  drop table inscriptos;

     /*Problema #73*/

 create table socios(
  documento char(8) not null, 
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );
 create table deportes(
  codigo tinyint identity,
  nombre varchar(20),
  profesor varchar(15),
  primary key(codigo)
 );
 create table inscriptos(
  documento char(8) not null, 
  codigodeporte tinyint not null,
  anio char(4),
  matricula char(1),--'s'=paga, 'n'=impaga
  primary key(documento,codigodeporte,anio)
 );

 insert into socios values('22222222','Ana Acosta','Avellaneda 111');
 insert into socios values('23333333','Betina Bustos','Bulnes 222');
 insert into socios values('24444444','Carlos Castro','Caseros 333');
 insert into socios values('25555555','Daniel Duarte','Dinamarca 44');

 insert into deportes values('basquet','Juan Juarez');
 insert into deportes values('futbol','Pedro Perez');
 insert into deportes values('natacion','Marina Morales');
 insert into deportes values('tenis','Marina Morales');

 insert into inscriptos values ('22222222',3,'2006','s');
 insert into inscriptos values ('23333333',3,'2006','s');
 insert into inscriptos values ('24444444',3,'2006','n');

 insert into inscriptos values ('22222222',3,'2005','s');
 insert into inscriptos values ('22222222',3,'2007','n');

 insert into inscriptos values ('24444444',1,'2006','s');
 insert into inscriptos values ('24444444',2,'2006','s');

 insert into inscriptos values ('26666666',0,'2006','s');

 select s.nombre,d.nombre,anio
  from deportes as d
  right join inscriptos as i
  on codigodeporte=d.codigo
  left join socios as s
  on i.documento=s.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  full join inscriptos as i
  on codigodeporte=d.codigo
  full join socios as s
  on s.documento=i.documento;

 select s.nombre,d.nombre,anio,matricula
  from deportes as d
  join inscriptos as i
  on codigodeporte=d.codigo
  join socios as s
  on s.documento=i.documento
  where s.documento='22222222';





























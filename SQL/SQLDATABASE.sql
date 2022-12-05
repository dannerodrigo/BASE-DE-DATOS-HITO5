CREATE DATABASE [MONET_DBA];
USE [MONET_DBA];

CREATE TABLE cliente(
	[id cliente] int primary key not null, 
	[nombres] varchar(50) not null,
	[apellido paterno] varchar(50) not null,
	[apellido materno] varchar(50) not null,
	[edad] int not null,
	[pais] varchar(50) not null,
	[telefono] int not null,
	[genero] varchar(50) not null
);
INSERT INTO cliente([id cliente], [nombres], [apellido paterno], [apellido materno], [edad], [pais], [telefono], [genero]) VALUES
	(123, 'Jose', 'Barrera', 'Fuentes' ,23, 'Colombia' ,934589357, 'Masculino'),
	(124, 'Raul','Torrez','Cruz',34, 'Argentina',213454557,'Masculino'),
	(125, 'Regina','Gonzales','Gutierres',40, 'Paraguay',844658734,'Femenino'),
	(126, 'Carlos','Medrano','Perez',18, 'Mexico',934589357,'Masculino'),
	(127, 'Miguel','Esequiel','Toledo',76, 'Colombia',932349357,'Masculino'),
	(128, 'Regina','Vargas','Fuentes',25, 'Costa Rica',983274123,'Femenino'),                    
	(129, 'Guina','De La Cruz','Paredez',45, 'Venezuela',452389357,'Femenino'),
	(130, 'Oscar','Toledo','Pinto',15,'Chile',534539357,'Masculino'),
	(131, 'Fernando','Reyes','Firmino',30, 'Brazil',934589357,'Masculino'),
	(132, 'Juan','Gonzales','Garcia',20, 'Mexico',874704357,'Masculino'),
	(133, 'Hector','Quispe','Mamani',13, 'Bolivia',73849395,'Masculino'),
	(134, 'Maria','Lopez','Gutierrez',76, 'Peru',934589357,'Femenino'),
	(135, 'Gabo','Garmendia','Sain',43, 'Chile',738399532,'Masculino'),
	(136, 'Reyna','Torres','Veltran',23, 'Uruguay',485234533,'Femenino'),
	(137, 'Miguel','Toledo','Medrano',24, 'Cuba',23427634,'Masculino'),
	(138, 'Arturo','Herrera','Guygua',32, 'Marruecos',36493649,'Masculino'),
	(139, 'Josefina','Hernandez','Cruz',67, 'Ecuador',36727433,'Femenino'),
	(140, 'Patricia','Hernandez','Casablanca',54, 'Venezuela',83472345,'Femenino'),
	(141, 'Jose','De la Cruz','Barrera',43, 'Ecuador',52985434,'Masculino'),
	(142, 'Rene','Garcia','Martines',45, 'El Salvador',475934235,'Masculino'),
	(143, 'cristina','Hernandez','Rivera',53, 'Peru',345239357,'Femenino'),
	(144, 'Vicente','Diaz','Ortiz',32, 'Guatemala',32765567,'Masculino'),
	(145, 'Camilo','Martines','Sanches',33, 'Panama',34545676,'Masculino'),
	(146, 'Leo','Flores','Gomez',23, 'Colombia',56435456,'Masculino'),
	(147, 'Adrian','Ortiz','Cruz',23, 'Republica Dominicana',934589357,'Masculino'),
	(148, 'Beatriz','Barrera','Morales',56, 'Haiti',23436663,'Masculino'),
	(149, 'Hector','Flores','Martines',34, 'Honduras',345246364,'Masculino'),
	(150, 'Ruben','Ortiz','Cronos',45, 'Guatemala',343432455,'Masculino'),
	(151, 'Camilo','Cruz','Fernadez',30, 'Brazil',838749494,'Masculino'),
	(152, 'Juan','Gonzales','Garcia',20, 'Mexico',465838478,'Masculino'),
	(153, 'Rene','Quispe','Morales',23, 'Bolivia',367445983,'Masculino'),
	(154, 'Ema','Villareal','Tensoro',22, 'Argentina',346589357,'Femenino'),
	(155, 'Adrian','Gomes','Torres',14, 'Costa Rica',375937589,'Masculino'),
	(156, 'Paola','De la Villa','Isnardes',15, 'Uruguay',759389589,'Femenino'),
	(157, 'Juaquin','Toledo','Dias',45, 'Chile',23427634,'Masculino'),
	(158, 'Vidal','Fuentes','Isnardez',46, 'Marruecos',463857583,'Masculino'),
	(159, 'Fernanda','Medrano','Gutierres',67, 'Cuba',23758387,'Femenino');
SELECT * FROM cliente;
DROP TABLE cliente;

CREATE TABLE historial(
	[fecha] varchar(20),
	[antecedente] varchar(50),
	[id cliente] int,
	FOREIGN KEY ([id cliente]) REFERENCES cliente ([id cliente])
);

INSERT INTO historial([fecha], [antecedente], [id cliente]) VALUES
	('23/12/2012', 'descarga de el elemento 21' ,'156'),
	('12/11/2018', 'busqueda de "impresoras.png"' ,'155'),
	('01/02/2014', 'husqueda de "fondos de pantalla"' ,'146'),
	('06/05/2016', 'descarga de el elemento 18' ,'127'),
	('12/04/2017', 'busqueda de "imagenes minimalistas"' ,'138'),
	('14/09/2013', 'descarga de el elemento 21' ,'150'),
	('12/02/2013', 'husqueda de "imagenes de gatitos"' ,'149'),
	('18/11/2016', 'descarga de el elemento 21' ,'140'),
	('22/10/2020', 'descarga de el elemento 22' ,'133'),
	('29/07/2015', 'husqueda de "animales"' ,'129'),
	('30/08/2010', 'descarga de el elemento 1' ,'123');
SELECT * FROM historial;
DROP TABLE historial;

CREATE TABLE producto(
	[elemento] int identity not null,
	[tipo] varchar(30) not null,
	[categoria] varchar(30) not null,
	[id cliente] int,
	FOREIGN KEY ([id cliente]) REFERENCES cliente([id cliente])
);
INSERT INTO producto([tipo], [categoria], [id cliente]) VALUES
    ('video','entretenimiento', 123),
	('imagen','comercial', 124),
	('video','educativo', 125),
	('imagen','entretenimiento', 126),
	('video','recurso', 127),
	('video','entretenimiento', 128),
	('imagen','educativo', 129),
	('imagen','entretenimiento', 130),
	('imagen','comercial', 131),
	('imagen','entretenimiento', 132),
	('video','recurso', 133),
	('imagen','educativo', 134),
	('video','entretenimiento', 135),
	('imagen','comercial', 136),
	('imagen','entretenimiento', 137),
	('video','educativo', 138),
	('video','recurso', 139),
	('video','recurso', 140),
	('imagen','entretenimiento', 141),
	('video','comercial', 142),
	('imagen','entretenimiento', 143),
	('video','educativo', 144),
	('imagen','recurso', 145),
	('video','entretenimiento', 146);

SELECT * FROM producto;
DROP TABLE producto;

CREATE TABLE creator(
	[tipo] varchar(30) not null,
	[categoria] varchar(30) not null,
	[id cliente] int,
	FOREIGN KEY ([id cliente]) REFERENCES cliente([id cliente])
);
INSERT INTO creator([tipo], [categoria], [id cliente]) VALUES
    ('video','entretenimiento', 123),
	('imagen','comercial', 124),
	('video','educativo', 125),
	('imagen','entretenimiento', 126),
	('video','recurso', 127),
	('video','entretenimiento', 128),
	('imagen','educativo', 129),
	('imagen','entretenimiento', 130),
	('imagen','comercial', 131),
	('imagen','entretenimiento', 132),
	('video','recurso', 133),
	('imagen','educativo', 134),
	('video','entretenimiento', 135),
	('imagen','comercial', 136),
	('imagen','entretenimiento', 137),
	('video','educativo', 138),
	('video','recurso', 139),
	('video','recurso', 140),
	('imagen','entretenimiento', 141),
	('video','comercial', 142),
	('imagen','entretenimiento', 143),
	('video','educativo', 144),
	('imagen','recurso', 145),
	('video','entretenimiento', 146);
drop table creator;
CREATE TABLE consultas(
	[fecha] varchar(30),
	[tipo] varchar(100),
	[decenlace] varchar(10),
	[id cliente] int,
	FOREIGN KEY ([id cliente]) REFERENCES cliente([id cliente])
);

drop table consultas;
INSERT INTO consultas([fecha], [tipo], [decenlace], [id cliente]) VALUES
	('23/12/2012', 'descarga de el elemento 21','compra','156'),
	('12/11/2018', 'busqueda de "impresoras.png"','compra','155'),
	('01/02/2014', 'husqueda de "fondos de pantalla"','no compra' ,'146'),
	('06/05/2016', 'descarga de el elemento 18','compra','127'),
	('12/04/2017', 'busqueda de "imagenes minimalistas"','compra' ,'138'),
	('14/09/2013', 'descarga de el elemento 21','no compra' ,'150'),
	('12/02/2013', 'husqueda de "imagenes de gatitos"','no compra' ,'149'),
	('18/11/2016', 'descarga de el elemento 21','compra' ,'140'),
	('22/10/2020', 'descarga de el elemento 22','compra' ,'133'),
	('29/07/2015', 'husqueda de "animales"','no compra' ,'129'),
	('30/08/2010', 'descarga de el elemento 1','no compra' ,'123');

----------------------------------------------------------CONSULTAS SQL UTILIZANDO INNER JOIN-------------------------------

--determinar cuantos clientes cradores son del pais de argentina

SELECT COUNT([nombres]) as clientes
FROM cliente as cli
	INNER JOIN creator as cre on cre.[id cliente] = cli.[id cliente]
WHERE pais = 'Argentina';


--determinar cuantos videos hay en la paltaforma y a que clientes pertenecen

SELECT COUNT([nombres]) as clientes
FROM cliente as cli
	INNER JOIN producto as pro on pro.[id cliente] = cli.[id cliente]
WHERE tipo = 'video';

--determinar cuatas descargas hubo en total que terminaron en descarga

SELECT COUNT([id cliente]) as descargas
FROM cliente as cli
	INNER JOIN consultas as con on con.[id cliente] = cli.[id cliente]
WHERE [tipo] LIKE 'descarga$';

-- determinar cuantos productos son de la categoria entretenimiento que su creadores sean de Colombia

SELECT COUNT([categoria]) as clientes
FROM producto as pro
	INNER JOIN cliente as cli on cli.[id cliente] = pro.[id cliente]
WHERE [pais] = 'Colombia'
and [categoria] = 'entrtenimiento';

----------------------------------------------------------FUNCIONES SQL-------------------------------

--CREAR UNA FUNCION QUE CLASIFIQUE TODOS EL CONTENIDO DE LA PLATAFORMA

create function clasificacion(@tipo varchar(10))

	returns varchar(100) as
	begin
		declare @res VARCHAR(20);
		if (@tipo = 'gracioso')
		set @res = 'entretenimiento'
		if (@tipo = 'curso')
		set @res = 'educativo'
		if (@tipo = 'publicidad')
		set @res = 'comercial'
		if (@tipo = 'comun')
		set @res = 'recurso';
		return @res;
	end;

select dbo.clasificacion('gracioso') as DBA;
select dbo.clasificacion('curso') as DBA;
select dbo.clasificacion('publicidad') as DBA;
select dbo.clasificacion('comun') as DBA;


-- CREAR UNA FUNCION QUE PERMITA MOSTRAR SI ES MAYOR A CIERTA EDAD, QUE SEA DE CIERTO PAIS Y TAMBIEN VER EL ESTADO DE SU CONSULTA

CREATE FUNCTION  estado(@edad int, @pais varchar(20), @estado varchar(10) )
	returns varchar(100) as
	begin
		declare @respuesta varchar(100)
		select @respuesta = concat(cli.[edad], cli.[pais], con.[decenlace])
		from cliente as cli
		INNER JOIN consultas as con on con.[id cliente] = cli.[id cliente]
		where cli.pais = @pais
		and cli.edad > @edad
		and con.[decenlace] = @estado;
		return @respuesta;
	end;

select dbo.estado(15, 'Argentina','compra') as DBA;


-- crar una funcion que sume todos los id de los clietes
CREATE FUNCTION  sumar_elementos()
	returns int as
	begin
		declare @respuesta int
		select @respuesta = sum([id cliente])
		from cliente
		return @respuesta;
	end;

select dbo.sumar_elementos() as DBA;

--funcion que permita contar todos los clientes que sean de nacionalidad Mexicana

CREATE FUNCTION  nacionalidad()
	returns int as
	begin
		declare @res int
		select @res = sum([nombres])
		from cliente AS cli
		where cli.[pais] = 'Mexico'
		return @res;
	end;

select dbo.nacionalidad() as DBA;


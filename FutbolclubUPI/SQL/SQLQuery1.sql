
--Crear base de dato 
create database UPIFC

--Crear tabla 
create table Jugador
(
  id int primary key,
  nombre varchar (50),
  edad int 
)

create table entrenador
 (
 id int primary key identity(1,1),
 nombre varchar(50),
 titulos varchar(150)
 )

 --Ingresar Jugadores
 insert into Jugador(id, nombre,edad) values (3,'Kevin Chamorro',25)
 insert into Jugador(id, nombre,edad) values (2,'Ariel Rodriguiez',27)

 --Consultar
select id, nombre, edad from Jugador
select nombre from Jugador 
select *from Jugador where edad =27

select*from Jugador
select*from entrenador 

--borrar un registro 
delete jugador where id=3

-- Actualizar 
update Jugador set edad = 24 where id=3

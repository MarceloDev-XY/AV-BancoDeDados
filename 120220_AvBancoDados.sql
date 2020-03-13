

/*Dupla : Daniel e Marcelo*/

create database agencia_bancaria_a;
go

use agencia_bancaria_a;
go


create table banco(
	id_bco			integer				not null	primary key,
	nm_bco			varchar (60)		not null,
	end_bco			varchar (70)		not null
)
go

create table tpconta (
	id_tp_con		integer			not null	primary key,
	dsc_tp_con		varchar	(20)	not null
)
go

create table cliente (
	id_clie			integer			not null	primary key,
	nm_clie			varchar (50)	not null,
	dt_nas			date			not null
)
go

create table agencia (
	id_agen			integer			not null	primary key,
	nm_agen			varchar	(40)	not null,
	end_agen		varchar (70)	not null,
	id_bco			integer			not null	constraint	id_banco_fk	references	banco(id_bco)
)
go

create table conta (
	id_conta		integer			not null	primary key,
	id_tp_con		integer			not null	constraint id_tipo_conta_fk	references tpconta(id_tp_con),
	id_clie			integer			not null	constraint id_cliente_fk	references cliente(id_clie),
	id_agen			integer			not null	constraint	id_agencia_fk	references	agencia(id_agen),
	vl_con			numeric(7,2)	not null
)
go

sp_help agencia
/* Inclusão de novos dados nas table*/


/* Inclusão dados table banco*/
	insert into banco values 
	(1, 'Bradesco', 'Cidade de Deus,25')
go
	select * from banco
go
/* Inlcusão dados table agencia*/

	insert into agencia values
	(110, 'Vl Maria' , 'Rua Alcantara, 20 ' , 1 ),
	(115, 'Tatuapé' , 'Rua Tuiti, 50' , 1),
	(120, 'Centro SP' , 'Praça da Sé' , 1)
go
/*	Inclusão de dados table */

	insert into tpconta	values
	(10, 'Conta Corrente'),
	(11, 'Conta Poupança'),
	(12, 'Conta Investimento')
go


	


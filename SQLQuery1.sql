
create database etec_has_func;

use etec_has_func;

	create table cargo (
		cd_cargo					integer,
		ds_cargo					varchar	(40), 

)
	create table departamento (
		cd_depto					integer,
		nm_depto					varchar(40),

)
	create table funcionario (
		cd_func						integer,
		cargo_cd_cargo				integer,
		departamento_cd_depto		integer,
		nm_pnome_func				varchar (50),
		nm_unome_func				varchar (30),
		vl_salario					numeric(9,2),
		dt_inicio					date,
		qt_dependente				numeric(2),
		

)
	

	/* ALTERANDO TABLE FUNCIONARIO  */
	/* ADICIONANDO */

	
	


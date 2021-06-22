create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment primary key,
periodo varchar(255),
tipo varchar(255)
);

insert into tb_categoria (periodo, tipo) values ("Manhã", "Presencial");
insert into tb_categoria (periodo, tipo) values ("Manhã", "Online");
insert into tb_categoria (periodo, tipo) values ("Tarde", "Presencial");
insert into tb_categoria (periodo, tipo) values ("Tarde", "Online");
insert into tb_categoria (periodo, tipo) values ("Noite", "Presencial");

create table tb_curso(
id bigint auto_increment primary key,
nome varchar(255),
categoria varchar(255),
qtAlunos int,
fk_periodo bigint,
preco decimal(10,2),
foreign key (fk_periodo) REFERENCES tb_categoria (id)
);

insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco ) values ("Inglês", "Idioma" , 40 , 1 , 400.00);
insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco ) values ("Inglês", "Idioma" , 45 , 2 , 250.00);
insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco ) values ("Inglês", "Idioma" , 40 , 3 , 400.00);
insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco ) values ("Inglês", "Idioma" , 45 , 4 , 250);
insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco) values ("Inglês", "Idioma" , 50 , 5 , 400.00);
insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco ) values ("Espanhol", "Idioma" , 40 , 1 , 400.00);
insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco) values ("Espanhol", "Idioma" , 40 , 2 , 250.00);
insert into tb_curso ( nome, categoria , qtAlunos , fk_periodo, preco) values ("Japonês", "Idioma" , 50 , 5, 400.00);


select * from tb_categoria;
select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria on  tb_curso.fk_periodo = tb_categoria.id;
select * from tb_curso inner join tb_categoria on tb_curso.fk_periodo = tb_categoria.id where qtAlunos = 40;

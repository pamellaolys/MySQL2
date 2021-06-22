create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment primary key,
setor varchar(255),
qtItens int
);

insert into tb_categoria (setor, qtItens) values ("Hidráulica", 350);
insert into tb_categoria (setor, qtItens) values ("Elétrica", 350);
insert into tb_categoria (setor, qtItens) values ("Construção", 700);
insert into tb_categoria (setor, qtItens) values ("Paisagismo", 100);
insert into tb_categoria (setor, qtItens) values ("Decoração", 200);

create table tb_produto(
id bigint auto_increment primary key,
nome varchar(255),
preco decimal(10,2),
unidadeMedida varchar (255),
fk_setor bigint,
foreign key (fk_setor) REFERENCES tb_categoria(id)
);

insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Cimento Todas as Obras 50kgs CPII Z 32R Votoran", 30.99 , "unidade" , 3 );
insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Piso cerâmico Econature acetinado bold 61x61cm marrom Formigres", 25.90 , "m²" , 3 );
insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Tubo para esgoto 6 metros 100mm Tigre", 129.90 , "unidade" , 1 );
insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Fita Veda Rosca 1,8cm 25 metros Tigre", 8.50 , "unidade" , 1 );
insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Cabo Flexível com até 750V 2,5mm preto 100 metros Cobrecom", 209.89 , "unidade" , 2 );
insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Conjunto Bianco Pró 4x2 interruptor simples e tomada 10A 85132 branco Alumbra", 20.90 , "unidade" , 2 );
insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Aparador de Grama Elétrico Tramontina AP1000T 127V 1000W com Fio de Nylon", 194.90 , "unidade" , 4 );
insert into tb_produto (nome, preco , unidadeMedida , fk_setor) values ("Lixeira de inox com pedal 5 litros Coisas e Coisinhas", 46.90 , "unidade" , 5 );

select * from tb_categoria;
select * from tb_produto;

select * from  tb_produto where preco > 50;

select * from  tb_produto where preco between 3 and 60 order by preco DESC;

select * from  tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on  tb_produto.fk_setor = tb_categoria.id;
select * from tb_produto inner join tb_categoria on  tb_produto.fk_setor = tb_categoria.id where setor = "Hidráulica";


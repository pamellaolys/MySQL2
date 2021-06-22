create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment primary key,
tipo varchar (255) not null,
unidadeMedida varchar (255)
);

insert into tb_categoria (tipo, unidadeMedida) values ("Cítricas" , "Unidade");
insert into tb_categoria (tipo, unidadeMedida) values ("Cítricas" , "kg");
insert into tb_categoria (tipo, unidadeMedida) values ("Doces" , "kg");
insert into tb_categoria (tipo, unidadeMedida) values ("Doces" , "unidade");
insert into tb_categoria (tipo, unidadeMedida) values ("Outros" , "Unidade" );


create table tb_produto (
id_produto bigint auto_increment primary key,
nome varchar(255),
preco decimal(10,2),
qtproduto int not null,
fk_tipo bigint, 
foreign key (fk_tipo) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Abacaxi", 7.50 , 30 , 1);
insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Morango", 10.00 , 30 , 1);
insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Banana Prata", 5.50 , 100 , 3);
insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Goiaba Vermelha", 7.90 , 100 , 3);
insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Laranja Pêra", 3.20 , 300 , 2);
insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Laranja Lima", 6.90 , 300 , 2);
insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Abacate", 6.00, 30 , 4);
insert into tb_produto (nome, preco , qtproduto , fk_tipo) values ("Geléia de Morango", 16.50 , 10 , 5);


select * from tb_categoria;
select * from  tb_produto;

select * from  tb_produto where preco > 50;

select * from  tb_produto where preco between 3 and 60 order by preco DESC;

select * from  tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on  tb_produto.fk_tipo = tb_categoria.id;
select * from tb_produto inner join tb_categoria on  tb_produto.fk_tipo = tb_categoria.id where unidadeMedida = "kg";


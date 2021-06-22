create database  db_pizzaria_legal;

use  db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment primary key,
tamanho varchar (255) not null,
tipo varchar(255) not null,
borda varchar (255) not null
);

insert into tb_categoria (tamanho, tipo, borda) values ("Grande"," Salgada" , "Sem borda");
insert into tb_categoria (tamanho, tipo, borda) values ("Broto", " Salgada" ,"Sem borda");
insert into tb_categoria (tamanho, tipo, borda) values ("Grande", " Salgada", "Borda de catupiry");
insert into tb_categoria (tamanho, tipo, borda) values ("Broto", " Salgada" , "Borda de catupiry");
insert into tb_categoria (tamanho, tipo, borda) values ("Grande", " Doce ", "Borda recheada doce");


create table tb_pizza (
id_pizza bigint auto_increment primary key,
nome varchar(255),
preco decimal(10,2),
ingredientes varchar(255),
fk_tamanho bigint, 
foreign key (fk_tamanho) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Mussarela", 25.00 ," Mussarela, azeitona e oregano" , 1);
insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Frango com catupiry", 20.00 ," Frango desfiado e catupiry" , 2);
insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Calabresa", 23.00, " Calabresa fatiada e cebola" , 4);
insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Frango com catupiry", 45.00, " Frango desfiado e catupiry", 1);
insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Brocules Especial", 52.00 , " Brocules temperado , mussarela e bacon", 1);
insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Camarão Especial", 60.00 , " Camarão temperado, mussarela e catupiry", 3);
insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Chocolate", 45.00, "Chocolate derretido e granulado", 5);
insert into tb_pizza (nome, preco , ingredientes , fk_tamanho) values ("Chocolate com morango", 45.00," Chocolate derretido e morangos picados", 5);

select * from tb_categoria;
select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on  tb_pizza.fk_tamanho = tb_categoria.id;
select * from tb_pizza inner join tb_categoria on  tb_pizza.fk_tamanho = tb_categoria.id where id = 5;

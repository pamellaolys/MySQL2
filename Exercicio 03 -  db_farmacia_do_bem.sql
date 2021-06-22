create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment primary key,
tipo varchar (255) not null,
prescricaoMedica boolean not null
);

insert into tb_categoria (tipo, prescricaoMedica) values ("Medicamentos" ,1 );
insert into tb_categoria (tipo, prescricaoMedica) values ("Medicamentos" ,0 );
insert into tb_categoria (tipo, prescricaoMedica) values ("Higiêne" ,0 );
insert into tb_categoria (tipo, prescricaoMedica) values ("Cosméticos" ,0 );
insert into tb_categoria (tipo, prescricaoMedica) values ("Outros" ,"0" );

create table tb_produto (
id_produto bigint auto_increment primary key,
nome varchar(255),
preco decimal(10,2),
Fabricante varchar(255),
fk_tipo bigint, 
foreign key (fk_tipo) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Azitromicina 500gr 5 comprimidos", 22.50 ,"Teuto" , 1);
insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Dipirona Monohidratada 500gr 10 comprimidos", 7.65 ,"Medley" , 2);
insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Antiácido sal de frutas Eno frasco 100gr", 15.10 ,"GSK" , 2);
insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Desodorante Antitranspirante Rexona Clinical Classic em Creme com 48g", 21.10 ,"Unilever" , 3);
insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Tintura Permanente Imédia Excellence Creme 4 Castanho Natural com 1 Unidade", 20.10 ,"L'Oréal" , 4);
insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Valda Friends Pote 50gr", 13.59 ,"Laboratório Canonne" , 5);
insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Sérum 10 SkinCeuticals Antioxidante Facial com 30ml", 269.90 ,"L'Oréal Brasil" , 4);
insert into tb_produto (nome, preco , fabricante , fk_tipo) values ("Allegra 120mg com 10 comprimidos", 65.70 ,"Sanofe" , 1);


select * from tb_categoria;
select * from  tb_produto;

select * from  tb_produto where preco > 50;

select * from  tb_produto where preco between 3 and 60 order by preco DESC;

select * from  tb_produto where nome like "%b%";

select tb_produto.nome,  tb_produto.preco ,  tb_produto.fabricante , tb_categoria.tipo , tb_categoria.prescricaoMedica from tb_produto inner join tb_categoria on tb_produto.fk_tipo = tb_categoria.id;
select tb_produto.nome,  tb_produto.preco ,  tb_produto.fabricante , tb_categoria.tipo , tb_categoria.prescricaoMedica from tb_produto inner join tb_categoria on tb_produto.fk_tipo = tb_categoria.id where prescricaoMedica = 1;

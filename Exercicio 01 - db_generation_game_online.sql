create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id_classe bigint auto_increment primary key,
nome varchar (255),
elemento varchar (255)
);

insert into tb_classe (nome, elemento) values ("Bruxas","Ar");
insert into tb_classe (nome, elemento) values ("Guerreiros","Terra");
insert into tb_classe (nome, elemento) values ("Sereias","Água");
insert into tb_classe (nome, elemento) values ("Trolls","Fogo");
insert into tb_classe (nome, elemento) values ("Elfos","Terra");

create table tb_personagem(
id_personagem bigint auto_increment primary key,
nome varchar(255),
poderAtaque bigint,
poderDefesa bigint,
classe bigint, foreign key (classe) REFERENCES tb_classe (id_classe)
);

insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("CUCA", 1500, 6000, 1);
insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("Arthur", 8500, 500, 2);
insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("Ariell", 5000, 1000, 3);
insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("Glenda", 2500, 6000, 1);
insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("Mig", 5000, 2000, 5);
insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("Trolleu", 5000, 6000, 4);
insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("Hobbin", 2500, 500, 2);
insert into tb_personagem (nome, poderAtaque , poderDefesa , classe) values ("Ursula", 6500, 3000, 3);

select * from tb_classe;
select * from tb_personagem;

select * from tb_personagem where poderAtaque > 2000;

select * from tb_personagem where poderDefesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select tb_personagem.nome, tb_personagem.poderAtaque , tb_personagem.poderDefesa , tb_personagem.classe, tb_classe.nome, tb_classe.elemento from tb_personagem inner join tb_classe on  tb_personagem.classe = tb_classe.id_classe;

select tb_personagem.nome, tb_personagem.poderAtaque , tb_personagem.poderDefesa , tb_personagem.classe, tb_classe.nome, tb_classe.elemento from tb_personagem inner join tb_classe on  tb_personagem.classe = tb_classe.id_classe where classe = 1;

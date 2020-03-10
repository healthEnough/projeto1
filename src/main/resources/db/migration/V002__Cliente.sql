create table cliente(
id int not null auto_increment primary key,
nome varchar(150),
telefone varchar(50),
cidade_id int not null)
ENGINE=InnoDB DEFAULT CHARSET=UTF8;
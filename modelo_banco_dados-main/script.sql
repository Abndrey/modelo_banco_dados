DROP DATABASE estoque_alimento;

create database estoque_alimento;

use estoque_alimento;

create table lote(
	pk int not null auto_increment, primary key (pk),
	numberacao_lote varchar(255) not null
);

create table detalhe_pedido(
	pk int not null auto_increment, primary key (pk), 
	qtd int not null,
	valorbase int not null,
    valortotal int not null,
    gastototal int not null
);

create table pedido(
pk int not null auto_increment, primary key (pk),
cabecalho varchar(255) not null, 
detalhe_pedido_fk int not null, foreign key (detalhe_pedido_fk) references detalhe_pedido (pk)
);

create table estoque(
	pk int not null auto_increment, primary key (pk),
	capacidade int not null,
    pedido_fk int not null, foreign key (pedido_fk) references pedido (pk)
);

create table local_armazenamento(
	pk int not null auto_increment, primary key (pk),
		nome varchar(255) not null,
        prateleira varchar(45),
        freezer varchar(45),
        geladeira varchar(45)
);

create table alimento(
	pk int not null auto_increment, primary key (pk),
    nome varchar(255) not null,
    qtd varchar(255) not null,
    perecivel decimal(65) not null,
    vencimento int not null,
    lote_fk int not null, foreign key (lote_fk) references lote (pk),
    estoque_fk int not null, foreign key (estoque_fk) references estoque (pk),
    local_armazenamento_fk int not null, foreign key (local_armazenamento_fk) references local_armazenamento (pk)
);












create database estoque_alimento;

use estoque_alimento;

create table alimento(
	pk int not null auto_increment, primary key (pk),
    nome varchar(255) not null,
    qtd varchar(255) not null,
    perecivel decimal(65) not null,
    vencimento int not null,
    lote_fk int not null, foreign key (lote_fk) references lore (pk),
    estoque_fk int not null, foreign key (estoque_fk) references estoque (pk),
    localArmazenamento_fk int not null,foreign key (localArmazenamento_fk) references localArmazenamento (pk)
);

create table lote(
	pk int not null auto_increment, primary key (pk),
	numberacaolote varchar(255) not null
);

create table estoque(
	pk int not null auto_increment, primary key (pk),
	capacidade int not null,
    pedido_fk int not null, foreign key (pedido_fk) references pedido (pk)
);

create table localArmazenamento(
	pk int not null auto_increment, primary key (pk),
		nome varchar(255) not null,
        prateleira varchar(45),
        freezer varchar(45),
        geladeira varchar(45)
);

create table detalhePedido(
	pk int not null auto_increment, primary key (pk), 
	qtd int not null,
	valorbase int not null,
    valortotal int not null,
    gastototal int not null
);

create table pedido(
pk int not null auto_increment, primary key (pk),
cabecalho varchar(255) not null, 
detalhePedido_fk int not null, foreign key (detalhePedido_fk) references detalhedoPedido (pk)
);


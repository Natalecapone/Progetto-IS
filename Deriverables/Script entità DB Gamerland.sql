drop schema if exists progettopw;

create schema progettopw;

use progettopw;



CREATE TABLE utente (

codicefiscale char(16) primary key,

nome varchar(20) not null,

cognome varchar(40) not null,

telefono varchar(10) not null,

città varchar (30) not null,

indirizzo varchar(50) not null,

mail varchar(40) not null,

password varchar(10) not null,

id varchar(10) not null unique,

tipologia varchar (50) not null

);



CREATE TABLE ordine(

numerofattura int primary key AUTO_INCREMENT,

datafattura varchar(30) not null,

codcliente char(16) not null,

nomecliente varchar(20) not null,

cognomecliente varchar(40) not null,

città varchar (30) not null,

indirizzo varchar(50) not null, 

importo float,

stato varchar(20) not null

);

create table acquisto(

nome varchar (50) not null,

piattaforma varchar(50) not null,

prezzo float not null,

quantità int not null,

tipo varchar(50) not null,

numeroOrdine int not null, 

foreign key (numeroOrdine) references ordine(numerofattura) on update cascade

);


create table prodotto(

id int auto_increment primary key,

nomep varchar(50) not null,

prezzo float not null,

genere varchar(50)  not null,

piattaforma varchar(50)  not null,

descrizione varchar(200)  not null,

quantità int  not null,

tipo varchar (50)  not null

);

create table carrello(

idprodotto int,

foreign key (idprodotto) references prodotto(id) on delete cascade,

quantità int not null,

cliente char(16),

foreign key (cliente) references utente(codicefiscale) on delete cascade
);




insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("fallout",60.00,"azione","ps4","magic",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo)  values ("fifa 18",60.00,"calcio","ps4","spettacolo",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo)  values ("fifa 18",60.00,"calcio","xbox one","spettacolo",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo)  values ("forza horizon 3",60.00,"sport","xbox one","edizione ferrari",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo)  values ("project cars 2",60.00,"sport","xbox one","100k ed",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo)  values ("super mario odyssey",60.00,"fantasy","nintendo switch","remastered ed",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo)  values ("zelda",60.00,"fantasy","nintendo switch","remastered ed",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("cod 4",60.00,"guerra","ps4","classic",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("for honor",60.00,"azione","ps4","multiplayer",10,"gioco");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("move pad",60.00,"black","ps4","ergonomico",10,"accessorio");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("kinect",60.00,"FHD","xbox one","white",10,"accessorio");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("joycon",60.00,"pacco double","nintendo switch","rosso/blu",10,"accessorio");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("nintendo anniversario",60.00,"classic ed.","nintendo switch","decalcomania",10,"console");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("xbox cod 4",60.00,"1 tera","xbox one","grey/black",10,"console");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("ps4",60.00,"1 tera","ps4","white",10,"console");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("cuffie",60.00,"original","ps4","decalcomania",10,"accessorio");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("cuffie",60.00,"celebration","xbox one","grey/black",10,"accessorio");

insert into prodotto (nomep, prezzo, genere, piattaforma, descrizione, quantità,tipo) values ("volante",60.00,"mario kart ed","nintendo switch","white",10,"accessorio");



insert into utente (codicefiscale, nome, cognome, telefono, città, indirizzo, mail, password, id, tipologia) values ("ahirgbdu74tfu67t","Natale","Capone","3291353277","montella","via fratelli pascale","natcap93@hotmail.it","wolf","natcap","cliente");

insert into utente (codicefiscale, nome, cognome, telefono, città, indirizzo, mail, password, id, tipologia) values ("ertgfdcvbnlkujmk","roberto","stanzione","3291353277","montella","san martino","gjfkdgsdlk@live.it","admin","root","admin");

insert into utente (codicefiscale, nome, cognome, telefono, città, indirizzo, mail, password, id, tipologia) values ("6565tryfgdhfyty4","Natale","Capone","3291353277","montella","via fratelli pascale","natcap93@hotmail.it","ilgrigio","gandalf","proprietario");

insert into utente (codicefiscale, nome, cognome, telefono, città, indirizzo, mail, password, id, tipologia) values ("ertg66cvbn9kujmk","natale","capone","3291353277","montella","via fratelli pascale","ciro@live.it","lavatrice","pino","magazziniere");



 

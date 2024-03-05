create database if not exists jeu;

use jeu;

create table if not exists matiere(
    id_matiere int primary key, 
    nom_matiere varchar(64)
); 

create table if not exists francais (
    id_matiere int, 
    chapitre int, 
    niveau int,
    theme varchar (128),
    foreign key (id_matiere) references matiere(id_matiere)
);

create table if not exists mathematique (
    id_matiere int, 
    chapitre int, 
    niveau int,
    theme varchar (128),
    foreign key (id_matiere) references matiere(id_matiere)
);

create table if not exists musique (
    id_matiere int, 
    chapitre int, 
    niveau int,
    theme varchar (128),
    foreign key (id_matiere) references matiere(id_matiere)
);

create table if not exists utilisateur (
    id_user int primary key,
    pseudo varchar(128),
    age int, 
    region varchar(128),
    niveau int,
    nombre_piece int, 
    rang int, 
    nombre_point int
);

create table if not exists classement (
    id_user int,
    pseudo varchar(128),
    rang int,
    nombre_point int,
    foreign key (id_user, pseudo, rang, nombre_point) references utilisateur(id_user, pseudo, rang, nombre_point)
); 


create table if not exists skin (
    id_skin int primary key, 
    nom_skin varchar(128)

);

create table if not exists equipement (
    id_equipement int primary key,
    nom_equipement varchar(128)
);
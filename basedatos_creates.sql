drop database if exists projecto;
create database projecto character set utf8;
use projecto;

create table if not exists PLAYER (
id_player varchar(25) primary key,
name varchar (40),
level_risk int,
human boolean);

create table if not exists GAME (
id_game int auto_increment primary key,
players int,
start_hour DATETIME,
end_hour DATETIME,
rounds int,
id_deck char(3)
);

create table if not exists ROUNDS (
id_n_round int,
id_player varchar(25),
id_game int,
bank boolean,
bet_points int,
cards_value decimal(4,1),
starting_round_points int,
ending_round_points int
);

create table if not exists PLAYER_GAME (
id_game int,
id_player varchar(25),
initial_card_id char(3),
starting_points int,
ending_points int
);

create table if not exists DECK (
id_deck char(3),
deck_name varchar(25)
);

create table if not exists CARD (
id_card char(3),
id_deck char(3),
card_name varchar(25),
card_value int,
card_priority int,
card_real_value decimal(2,1)
);
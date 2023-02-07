/*----------------------------alter table primary key-------------------------------*/
alter table CARD add constraint primary key (id_card,id_deck);
alter table PLAYER_GAME add constraint primary key (id_game,id_player);
alter table ROUNDS add constraint primary key (id_game,id_n_round,id_player);
alter table GAME modify id_game int auto_increment not null ;
alter table DECK modify id_deck char(3) primary key not null ;
alter table GAME modify id_deck char(3);
/*----------------------------alter table foreign key-------------------------------*/
alter table CARD add constraint  fk_deck_card foreign key (id_deck) references DECK (id_deck);
alter table GAME add constraint  fk_deck_game foreign key (id_deck) references DECK (id_deck);
alter table PLAYER_GAME add constraint  fk_game_playerg foreign key (id_game) references GAME (id_game);
alter table PLAYER_GAME add constraint  fk_player_playerg foreign key (id_player) references PLAYER (id_player);
alter table ROUNDS add constraint  fk_playerg_round foreign key (id_game,id_player) references PLAYER_GAME (id_game,id_player);



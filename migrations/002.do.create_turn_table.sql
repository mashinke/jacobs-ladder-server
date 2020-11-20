create table turn (
  id integer primary key generated by default as identity,
  roll integer,
  skip_attempt boolean,
  skip_success boolean,
  use_hint boolean,
  id_game integer references game(id) not null
);
create table answer (
  id integer primary key generated by default as identity,
  answer_text text not null
);

create table question (
  id integer primary key generated by default as identity,
  question_text text not null
);

create table card (
  id integer primary key generated by default as identity,
  alt_text text not null,
  id_question integer references question(id) not null,
  id_answer integer references answer(id) not null,
  difficulty integer not null
);

alter table turn
  add id_card integer references card(id) not null;
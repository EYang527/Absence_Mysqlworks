DROP DATABASE IF EXISTS greatSongsDB;

CREATE DATABASE greatSongsDB;

USE greatSongsDB;

CREATE TABLE songs (
  id INT NOT NULL AUTO_INCREMENT,
  song_name VARCHAR(45) ,
  genre varchar(255),
  artist VARCHAR(45) , 
  PRIMARY KEY (id)
);


insert into songs(song_name,genre,artist)
values("no diggity","RnB","Blackstreet");

insert into songs(song_name,genre,artist)
values("We belong together","RnB","Mariah Carey");

insert into songs(song_name,genre,artist)
values("Let me love you","RnB","Mario");

insert into songs(song_name,genre,artist)
values("We will rock you","Rock","Queen");

insert into songs(song_name,genre,artist)
values("Stairway to Heaven","Rock","Led Zeppelin");

insert into songs(song_name,genre,artist)
values("Cry pretty","Country","Carrie Underwood");

insert into songs(song_name,genre,artist)
values("Live like you were dying","Country","Tim McGraw");

insert into songs(song_name,genre,artist)
values("The sign","pop","Ace of Base");

insert into songs(song_name,genre,artist)
values("Rolling in the deep","pop","Adele");

insert into songs(song_name,genre,artist)
values("Hello","pop","Adele");

insert into songs(song_name,genre,artist)
values("Someone like you","pop","Adele");


select * from songs;

select * from songs
order by genre;

select * from songs
where artist="adele";

select * from greatsongsdb.songs
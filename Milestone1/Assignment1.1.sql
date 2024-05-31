create table Actors (
	Actor_id int not null,
	Name char(50) not null,
	Sex varchar(10) not null,
	DOB DATE,
	Bio varchar(100)
	PRIMARY KEY (Actor_id))

CREATE TABLE Producers (
	Producer_id int not null,
	Name char(50) not null,
	Sex varchar(10) not null,
	DOB DATE,
	Bio varchar(100)
	PRIMARY KEY (Producer_id))

CREATE TABLE Movies (
	Movie_id int not null,
	Name char(100) not null,
	YearOfRelease int not null,
	Poster varchar(1000) not null,
	PRIMARY KEY (Movie_id)
	)

ALTER TABLE Movies ADD Producer_id int


ALTER TABLE Movies ADD FOREIGN KEY(Producer_id) References Producers(Producer_id)

CREATE TABLE Movies_Actors(
	Movie_id int not null,
	Actor_id int not null,
	)

ALTER TABLE Movies_Actors ADD FOREIGN KEY(Movie_id) References Movies(Movie_id)

ALTER TABLE Movies_Actors ADD FOREIGN KEY(Actor_id) References Actors(Actor_id)
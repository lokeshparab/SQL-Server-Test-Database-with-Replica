use sakila
go

-- Create the actor table

CREATE TABLE actor (
  actor_id smallint IDENTITY(1,1) NOT NULL,
  first_name varchar(45) NOT NULL,
  last_name varchar(45) NOT NULL,
  city_id smallint NOT NULL,
  PRIMARY KEY (actor_id),
  CONSTRAINT fk_actor_city FOREIGN KEY (city_id) REFERENCES city (city_id) ON DELETE NO ACTION ON UPDATE CASCADE,
  INDEX idx_actor_last_name (last_name)
);

-- Insert value in actor table

INSERT INTO actor (first_name, last_name, city_id)
VALUES ('PENELOPE','GUINESS',4),
       ('NICK','WAHLBERG',6),
	     ('ED','CHASE',1),
	     ('JENNIFER','DAVIS',7),
	     ('JOHNNY','LOLLOBRIGIDA',3),
	     ('BETTE','NICHOLSON',9);
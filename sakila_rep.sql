create database sakile_rep;

use sakila_rep
go

-- Create the country table

CREATE TABLE country (
  country_id smallint IDENTITY(1,1) NOT NULL,
  country varchar(50) NOT NULL,
  PRIMARY KEY (country_id)
);

-- Insert value in country table

INSERT INTO country (country)
VALUES ('United States'),
       ('United Kingdom'),
	   ('Canada'),
       ('Afghanistan'),
	   ('Algeria'),
	   ('American Samoa'),('Angola'),('Anguilla'),
	   ('Argentina'),('Armenia'),('Australia'),
	   ('Austria'),('Azerbaijan'),('Bahrain'),
	   ('Bangladesh'),('Belarus');

-- Create the city table

CREATE TABLE city (
  city_id smallint IDENTITY(1,1) NOT NULL,
  city varchar(50) NOT NULL,
  country_id smallint NOT NULL,
  PRIMARY KEY (city_id),
  CONSTRAINT fk_city_country FOREIGN KEY (country_id) REFERENCES country (country_id) ON DELETE NO ACTION ON UPDATE CASCADE,
  INDEX idx_fk_country_id (country_id)
);

-- Insert value in city table

INSERT INTO city (city, country_id)
VALUES ('York', 1),
       ('Los Angeles', 1), 
       ('London', 2), 
       ('Toronto', 3),
       ('Kabal', 4),
       ('Algiers', 5),
       ('Pago Pago', 6),
       ('Luanda', 7),
       ('Valley', 8),
       ('Buenos Aires', 9),
       ('Yerevan', 10),
       ('Sydney', 11),
       ('Vienna', 12),
       ('Baku', 13),
       ('Manama', 14),
       ('Dhaka', 15),
       ('Minsk', 16);

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
	     ('ED','CHASE',1);

    
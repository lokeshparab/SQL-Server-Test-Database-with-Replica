use sakila_rep
go

CREATE TABLE country (
  country_id smallint IDENTITY(1,1) NOT NULL,
  country varchar(50) NOT NULL,
  PRIMARY KEY (country_id)
);

INSERT INTO country (country)
VALUES ('United States'),
       ('United Kingdom'),
	   ('Canada'),
       ('Afghanistan'),
	   ('Algeria'),
	   ('American Samoa'),('Angola'),('Anguilla'),
	   ('Argentina'),('Armenia'),('Australia'),
	   ('Austria'),('Azerbaijan'),('Bahrain'),
	   ('Bangladesh'),('Belarus')
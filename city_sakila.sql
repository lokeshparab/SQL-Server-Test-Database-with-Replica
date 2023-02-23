use sakila
go

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
VALUES ('New York', 1),
       ('Los Angeles', 1), 
       ('London', 2), 
       ('Toronto', 3),
       ('Kabul', 4),
       ('Algiers', 5),
       ('Pago Pago', 6),
       ('Luanda', 7),
       ('The Valley', 8),
       ('Buenos Aires', 9),
       ('Yerevan', 10),
       ('Sydney', 11),
       ('Vienna', 12),
       ('Baku', 13),
       ('Manama', 14),
       ('Dhaka', 15),
       ('Minsk', 16);




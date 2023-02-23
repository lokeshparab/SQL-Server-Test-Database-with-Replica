# SQL-Server-Test-Database-with-Replica
This is repository to create 2 databases and insert values in database using  Microsoft SQL Server. You can use for testing and comparing the data difference  whether data is sycn properly

# About the repository
* I have provide query which create two test database i.e 
  * **sakila**  is main database assume to be centralised depends on problem statement
  * **sakila_rep** is replica of main database(sakila) which is not fully sync , missing values and not updated  
  
* Both Database have same table and column name only it is differ from data values. 

# How to setup this Database

1. Download or clone this repository in your local machine
2. Open SQL Server Management Console and make connect on **Connect to Server** as Database Engine.
3. Press **Ctrl + O** and open all the files given in repository
4. First you have to execute **create-2-databse.sql** by click Execute or Press F5
5. After that you are free to execute remain file . Click Excute or Press F5 to all files
6. Sucessfully Created 2 Test Database

# About File
| File                   | Decription                                                    |
|------------------------| --------------------------------------------------------------|
| create-2-databse.sql   | Create sakila and sakila_rep database in SQL Server           |
| actor_sakila.sql       | Create actor table and insert values in sakila database       |
| actor_sakila_rep.sql   | Create actor table and insert values in sakila_rep database   |
| city_sakila.sql        | Create city table and insert values in sakila database        |
| city_sakila_rep.sql    | Create city table and insert values in sakila_rep database    |
| country_sakila.sql     | Create country table and insert values in sakila database     |
| country_sakila_rep.sql | Create country table and insert values in sakila_rep database |

# File used for sakila v/s sakila_rep
| sakila             | sakila_rep             |
|--------------------|------------------------|
| actor_sakila.sql   | actor_sakila_rep.sql   |
| city_sakila.sql    | city_sakila_rep.sql    |
| country_sakila.sql | country_sakila_rep.sql |

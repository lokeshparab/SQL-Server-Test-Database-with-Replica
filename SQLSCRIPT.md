# SQL Server database analysis

1. List of All Users, Roles, Privileges
```
```
2. List of All Schemas
```
```
3. List of All Objects and their type
```
```
4. Partitions
```
```
5. Tablespaces
```
```
6. Database Size
```
```
7. DataTypes used in Tables and other Objects
```
SELECT DISTINCT
    t.name AS [Table Name],
    c.name AS [Column Name],
    TYPE_NAME(c.system_type_id) AS [Data Type]
FROM sys.columns c
INNER JOIN sys.tables t ON c.object_id = t.object_id
ORDER BY t.name;
```
8. List of Jobs/events and their types
```
SELECT sj.name, sj.category_id, sc.name
FROM msdb.dbo.sysjobs sj
INNER JOIN msdb.dbo.syscategories sc ON sj.category_id = sc.category_id
ORDER BY sj.name;
```
9. Platform, Version, and OS
```
SELECT @@SERVERNAME AS [Server Name], @@VERSION AS [Version], @@SERVICENAME AS [Service Name], @@LANGUAGE AS [Language];
```
10. List of tables with Number of rows
```  
SELECT t.name AS [Table Name], p.rows AS [Number of Rows]
FROM sys.tables t
INNER JOIN sys.partitions p ON t.object_id = p.object_id
WHERE p.index_id IN (0, 1)
ORDER BY t.name;
```

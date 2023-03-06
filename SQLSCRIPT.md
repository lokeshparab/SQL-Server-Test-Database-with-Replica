# SQL Server database analysis

1. List of All Users, Roles, Privileges
```
SELECT name, type_desc
FROM sys.database_principals
WHERE type IN ('S', 'U', 'G')
ORDER BY type_desc, name;
```
2. List of All Schemas
```
SELECT name
FROM sys.schemas
WHERE name NOT LIKE 'db_%'
ORDER BY name;
```
3. List of All Objects and their type
```
SELECT name, type_desc
FROM sys.objects
ORDER BY type_desc, name;
```
4. Partitions
```
SELECT OBJECT_NAME(object_id) AS table_name, index_id, partition_number, rows
FROM sys.partitions
ORDER BY table_name, index_id, partition_number;

```
5. Tablespaces
```
SELECT DISTINCT t.NAME AS TableName, i.name AS IndexName, ds.name AS FileGroupName
FROM sys.indexes AS i
INNER JOIN sys.filegroups AS ds ON i.data_space_id = ds.data_space_id
INNER JOIN sys.all_objects AS t ON i.object_id = t.object_id
WHERE i.type_desc <> 'HEAP'
ORDER BY t.name;
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

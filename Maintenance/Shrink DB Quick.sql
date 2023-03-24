USE tempdb;
EXEC sp_spaceused;
DBCC SHRINKDATABASE (tempdb, TRUNCATEONLY);  
EXEC sp_spaceused;

USE mydatabase;
EXEC sp_spaceused;
DBCC SHRINKDATABASE (mydatabase, TRUNCATEONLY);  
EXEC sp_spaceused;

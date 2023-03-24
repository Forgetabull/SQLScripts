USE MYDATABASE;
GO
-- Truncate the log by changing the database recovery model to SIMPLE.
ALTER DATABASE MYDATABASE
SET RECOVERY SIMPLE;
GO
-- Shrink the truncated log file to 1 MB.
DBCC SHRINKFILE (2, 1);  -- here 2 is the file ID for trasaction log file,you can also mention the log file name (dbname_log)
GO
-- Reset the database recovery model.
ALTER DATABASE MYDATABASE
SET RECOVERY FULL;
GO

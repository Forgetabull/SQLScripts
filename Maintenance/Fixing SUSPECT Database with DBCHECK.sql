-- From:
-- https://www.stellarinfo.com/blog/recover-sql-database-from-suspect-mode/#:~:text=and%20higher%20versions.-,When%20does%20SQL%20database%20goes%20to%20suspect%20mode%3F,SQL%20database%20in%20suspect%20mode.

-- Set Database to Emergency Mode
EXEC sp_resetstatus 'Database01';
ALTER DATABASE Database01 SET EMERGENCY

-- If successful, run Check
DBCC CHECKDB ('Database01')
GO
-- If consistency errors are found, it will recommend the minimum repair level, use that.

ALTER DATABASE [Database01] SET ONLINE;
GO
ALTER DATABASE Database01 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
GO
DBCC CHECKDB ('Database01', REPAIR_REBUILD)
GO
ALTER DATABASE Database01 SET MULTI_USER
GO

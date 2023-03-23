
DECLARE @id INT
DECLARE @name NVARCHAR(100)
DECLARE @statement NVARCHAR(250)
DECLARE @getid CURSOR

-- Set Up Cursor for Table
SET @getid = CURSOR FOR
SELECT name FROM sys.databases WHERE CASE WHEN state_desc = 'ONLINE' THEN OBJECT_ID(QUOTENAME(name) + '.[dbo].[tbl_MML]', 'U') END IS NOT NULL ORDER BY 1

-- Iterate through the resulting table
OPEN @getid
FETCH NEXT
FROM @getid INTO @name
WHILE @@FETCH_STATUS = 0
BEGIN
	-- FOR EACH LINE...
	PRINT N'Creating  dbo.tbl_Audit for database: ' + @name
	
	SELECT @statement = 'use '+@name +';'+ 'CREATE TABLE dbo.tbl_Audit ( 
    ILA_ID INT PRIMARY KEY IDENTITY (1, 1), 
    AuditTimeStamp DATETIME NOT NULL, 
    [WindowsUser] VARCHAR (50) NOT NULL, 
    [Changes] VARCHAR (250) 
);'

	exec sp_executesql @statement


    FETCH NEXT
    FROM @getid INTO @name
END
PRINT N'All Done.'

CLOSE @getid
DEALLOCATE @getid





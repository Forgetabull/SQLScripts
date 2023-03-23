DECLARE @id INT
DECLARE @interval INT
DECLARE @name VARCHAR(max)
DECLARE @getid CURSOR
DECLARE @timeStamp DateTime

--DECLARE @MyResults TABLE
--(
--  [TimeStamp] DateTime,
--  [key] varchar(500), 
--  [value] float,
--  [type] int
--)

CREATE TABLE [dbo].[ExtractedJSONTable](
    [TimeStamp] [datetime] NOT NULL,
    [Key] [varchar](max) NOT NULL,
    [Value] [float] NOT NULL,
    [Type] [int] NULL
) ON [PRIMARY]

-- Set Up Cursor for Table
SET @getid = CURSOR FOR

SELECT
    convert(datetime, utc_log_time, 103) [timestamp], 
    SUBSTRING (
            REPLACE(model_input_data,'""','"'), 2, LEN(
            REPLACE(model_input_data,'""','"'))-2
        ) as TOAST
from 
 TableWithAJSONColumnInIt


-- Iterate through the resulting table
OPEN @getid
FETCH NEXT
FROM @getid INTO @timeStamp, @name
WHILE @@FETCH_STATUS = 0
BEGIN
    -- FOR EACH LINE...
    BEGIN TRY  

        INSERT INTO [dbo].[ExtractedJSONTable] ([TimeStamp], [key], [value], [type]) SELECT @timeStamp [TimeStamp], * FROM OPENJSON(@name) where [type] = 2; -- enable to isolate floats

    END TRY  
    BEGIN CATCH  
        SELECT 'FCK AN ERROR', @name
    END CATCH 

    FETCH NEXT
    FROM @getid INTO @timeStamp, @name
END
PRINT N'All Done.'

SELECT * FROM [dbo].[ExtractedJSONTable]
ORDER BY 1,2

CLOSE @getid
DEALLOCATE @getid


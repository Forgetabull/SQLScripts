----------------------------------------------------------------------------------
-- Create Table
----------------------------------------------------------------------------------
DROP TABLE [tbl_5min]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [tbl_5min](
	[TimeStamp]   [datetime] NOT NULL,
	[LogTimeFrom] [datetime] NOT NULL,
	[LogTimeTo]   [datetime] NOT NULL
CONSTRAINT [PK_tbl_5min] PRIMARY KEY CLUSTERED 
(
	[TimeStamp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO
CREATE NONCLUSTERED INDEX tbl_5min_idx_LogTimeFrom
ON [tbl_5min] ([LogTimeFrom],[TimeStamp])
INCLUDE ([LogTimeTo])
GO


----------------------------------------------------------------------------------
-- Populate Table
----------------------------------------------------------------------------------
SET NOCOUNT ON

-- TimeStamp -- Goes up every 5 mins
-- LogTimeTo -- start boundary
-- LogTimeFrom -- end boundary

DECLARE @CurrentTimeStamp datetime2
DECLARE @LogTimeFrom      datetime2
DECLARE @LogTimeTo        datetime2

SELECT @CurrentTimeStamp  = '2017-12-31 00:00:00.000'
SET    @LogTimeFrom       = @CurrentTimeStamp
SELECT @LogTimeTo         = DATEADD(MINUTE, 5, @LogTimeFrom) 

WHILE @CurrentTimeStamp < CONVERT(datetime2, '2027-12-31 00:00:00.000')
BEGIN
    --SELECT @CurrentTimeStamp, @LogTimeFrom, @LogTimeTo
	INSERT INTO [tbl_5min] 
		(
            [TimeStamp]
		   ,[LogTimeFrom]
		   ,[LogTimeTo]
		)		
		values 
		(
            @CurrentTimeStamp,
			@LogTimeFrom, 
			@LogTimeTo            
		)

    -- Set CurrentMaxDate to be 5 minutes time
	SELECT @CurrentTimeStamp		= DATEADD(MINUTE,   5, @CurrentTimeStamp) 
	
    IF @CurrentTimeStamp = @LogTimeTo
    BEGIN
        SET    @LogTimeFrom       = @CurrentTimeStamp
        SELECT @LogTimeTo         = DATEADD(MINUTE, 5, @LogTimeFrom) 
    END
END


----------------------------------------------------------------------------------
-- Test Table
----------------------------------------------------------------------------------
SELECT TOP (100) [TimeStamp]
      ,[LogTimeFrom]
      ,[LogTimeTo]
FROM [tbl_5min]
where [TimeStamp] > '2018-06-30 17:30:00.000'
order by [TimeStamp]



ALTER TABLE [MyDB].[dbo].[MyTable]
ALTER COLUMN [TimeStamp] varchar(255) not null;

ALTER TABLE [MyDB].[dbo].[MyTable]
ADD CONSTRAINT PK_TS PRIMARY KEY ([TimeStamp]);

ALTER TABLE [MyDB].[dbo].[MyTable]
ALTER COLUMN [MyCol] FLOAT null;

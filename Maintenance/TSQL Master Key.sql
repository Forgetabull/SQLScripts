USE master

CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Something 20220920';
GO
SELECT * FROM sys.symmetric_keys;
GO


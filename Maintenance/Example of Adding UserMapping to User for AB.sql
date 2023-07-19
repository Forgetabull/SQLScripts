USE [_Aux]
GO
CREATE USER [DOMAINNAME\firstname.lastname] FOR LOGIN [DOMAINNAME\firstname.lastname]
GO
USE [_Aux]
GO
ALTER USER [DOMAINNAME\firstname.lastname] WITH DEFAULT_SCHEMA=[dbo]
GO
USE [_Aux]
GO
ALTER ROLE [db_datareader] ADD MEMBER [DOMAINNAME\firstname.lastname]
GO
USE [_Aux]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [DOMAINNAME\firstname.lastname]
GO
USE [_Aux]
GO
ALTER ROLE [db_owner] ADD MEMBER [DOMAINNAME\firstname.lastname]
GO

USE mydb1
exec sp_spaceused @oneresultset = 1
USE mydb2
exec sp_spaceused @oneresultset = 1
USE mydb3
exec sp_spaceused @oneresultset = 1



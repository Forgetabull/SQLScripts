-- List Server Config
sp_configure;

-- Turn external scripts on
EXEC sp_configure 'external scripts enabled', 1
RECONFIGURE WITH OVERRIDE


SELECT 
  name,
  is_data_access_enabled 
FROM sys.servers;


EXEC sp_serveroption
  @server = 'SOL-NAS01',
  @optname = 'DATA ACCESS',
  @optvalue = 'TRUE';
--ALTER DATABASE 'Database01' SET HADR RESUME
--ALTER DATABASE Database01 SET hadr OFF
--RESTORE DATABASE Database01 WITH RECOVERY
--ALTER DATABASE Database01 SET hadr ON

--ALTER DATABASE Database01 SET SINGLE_USER WITH ROLLBACK IMMEDIATE
--DBCC CHECKDB ('Database01', REPAIR_ALLOW_DATA_LOSS)
--ALTER DATABASE Database01  SET MULTI_USER WITH NO_WAIT;
--EXEC sp_resetstatus 'Database01';
--ALTER DATABASE db_name SET EMERGENCY

--DBCC CHECKDB ('Database01')
--DBCC CHECKDB ('Database01', REPAIR_ALLOW_DATA_LOSS)


-- You will need to remove it from the "Always On High Availability/AvailableGroups/Available Databases", you'll then need to go about re-adding it.
ALTER DATABASE Database01 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO
ALTER DATABASE Database01 SET MULTI_USER WITH NO_WAIT;
GO



-- Query to find non-online databases

SELECT
    dc.database_name,
    d.synchronization_health_desc,
    d.synchronization_state_desc,
    d.database_state_desc
From
    sys.dm_hadr_database_replica_states d
    JOIN sys.availability_databases_cluster dc ON d.group_database_id = dc.group_database_id
    AND d.is_local = 1
WHERE 
database_state_desc <> 'ONLINE'




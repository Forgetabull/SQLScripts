# SQLScripts
SQL Scripts

|Script|Purpose|
|---|---|
|Add Audit Table for all DBs.sql|Add an audit table to all dbs on a server.|
|Add Columns and Copy data from one table to another.sql|Copying data from one table to another.|
|Add PK to table.sql|Primary Key script example|
|Aggregate to 2hr Window.sql|Script to demonstrate aggregating timeseries data to 2 hour intervals|
|Bulk Import Multiple CSV.sql|Bulk import from multiple csv example.|
|Bulk Import Sample.sql|Bulk Import example|
|Cleanup Duplicate Rows Example.sql|Example of cleaning up duplicates in a table prior to adding primary unique key|
|Column Names.sql|Query based way to get column names for dynamic queries.|
|Convert Columns to Floats.sql|Attempts to convert varchars to floats|
|Convert JSON to TABLE Row By Row3.sql|Example of converting a json field to a table row|
|Date Stuff.sql|Handy Date query stuff.|
|Difference To Previous Row.sql|A way to determine differences between current row and previous row.|
|Find Text in Stored Procs.sql|Example script for finding text in stored procs|
|Generate 5 min table.sql|Generate a time interval table with 5 min increments, good for timeseries data work|
|Get All View and Stored Proc Definitions.sql|Fetchs all views and stored proc definitions, good for backup|
|Insert into from Select.sql|Insert into from a select query example|
|LAG LEAD.sql|Handy Example Script that demonstrates LAG and LEAD|
|Rename Table.sql|Rename Table example|
|Unused Indexes.sql|Find indexes which aren't used via statistics.|

# Deeper Magic Scripts

|Script|Purpose|
|---|---|
|Fill Down.sql|Example of filling down data in sql (as in, repeat the last value till we have a new one)
|SELECT TOP 1 WITH TIES.sql|Elegant (and faster than group by) way of filtering data


# Deeper Magic Scripts

|Script|Purpose|
|---|---|
|Backup - Shrink - Run this after removing from avail group.sql|Shrink database after being removed from availability group|
|Change DB owner to SA and set trustworthy on.sql|Change DB owner to SA and set trustworthy on|
|Cycle SQL Server Error Log.sql|Cycle's the sqlserver error logs|
|Database - Switch from Restoring State.sql|Turns off restoring state|
|Database Size.sql|Gets size of a database|
|External Scripts Enabled.sql|Switches external scripts to enabled|
|Fixing SUSPECT Database with DBCHECK.sql|Fixing SUSPECT Database with DBCHECK|
|Fixing SUSPECT Database with simple restore.sql|Fixing SUSPECT Database with simple restore|
|Kill all connections to a SQL Server.sql|Kill all connections to a SQL Server|
|Resync Users.sql|Resyncs users with local users if you've restored from backup (or moved servers)|
|Shrink DB Quick.sql|Super quick database shrink|
|Space Used.sql|Gets space used by database|
|TSQL Master Key.sql|Adds a master key if required|

# Calling R from SQL Scripts

|Script|Purpose|
|---|---|
|R_00_HelloWorld.sql|Example hello world via calling R within sqlserver|
|R_01_SampleScript.sql|Second sample script to perform some minor R functions whilst in sqlserver|



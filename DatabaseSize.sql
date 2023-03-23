with fs
as
(
    select database_id, type, size * 8.0 / 1024 / 1024 size
    from sys.master_files
)
select
    name,
    (select round(sum(size),2) from fs where type = 0 and fs.database_id = db.database_id) DataFileSizeInGB,
    (select round(sum(size),2) from fs where type = 1 and fs.database_id = db.database_id) LogFileSizeInGB
from sys.databases db
ORDER BY 2 DESC

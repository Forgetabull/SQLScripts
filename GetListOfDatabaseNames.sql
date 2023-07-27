SELECT [Name]
    FROM master.dbo.sysdatabases
WHERE [Name] not in (
    'distribution',
    'master',
    'model',
    'msdb',
    'SOL_ReportServer',
    'SOL_ReportServerTempDB',
    'tempdb'
    )
order by 1
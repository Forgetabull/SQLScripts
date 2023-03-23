SELECT COUNT(1) from MYTABLE
--delete from MYTABLE
WHERE 
  EXISTS (
    SELECT local_log_time,site_Name FROM [MYTABLE2] 
	WHERE
	(
		application_module <> 'SIMULATE'
	OR
		environment <> 'PROD'
	OR 
		run_parameters NOT LIKE 'null'
	)
	AND
		local_log_time = MYTABLE.start_timestamp AND site_Name = MYTABLE.Site_Name
  )



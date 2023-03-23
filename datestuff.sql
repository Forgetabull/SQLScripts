--SELECT $__time(createdAtFormatted), NewUsers as VALUE
--FROM
--(
  SELECT -- 2021-01-22T03:31:05.609Z
        DATEADD(dd, DATEDIFF(dd, 0, CONVERT(DATETIME,SUBSTRING([createdAt],0,LEN([createdAt])-1),126)), 0) as createdAtFormatted, 
        CONVERT(DATETIME,SUBSTRING([createdAt],0,LEN([createdAt])-1),126) as createdAtFormatted2 
		--SUBSTRING([createdAt],0,LEN([createdAt])-1),
        --count(1) as NewUsers
  FROM
        [MyData]
  GROUP BY 
		DATEADD(dd, DATEDIFF(dd, 0, CONVERT(DATETIME,SUBSTRING([createdAt],0,LEN([createdAt])-1),126)), 0)
	--DATEADD(dd, DATEDIFF(dd, 0, CONVERT(DATETIME,[createdAt],126)), 0)
--) a
--order by 1


  SELECT 
        CONVERT(date,SUBSTRING([createdAt],0,LEN([createdAt])-1),126) as createdAtFormatted--, 
        --CONVERT(DATETIME,SUBSTRING([createdAt],0,LEN([createdAt])-1),126) as createdAtFormatted2 
  FROM
        [MyData]


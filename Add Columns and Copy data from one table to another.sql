
  ALTER TABLE [myTable2] ADD [COL1] VARCHAR(50) NULL;

  update a
  set 
	   a.[COL1]		= b.[COL1]		
      ,a.[COL2]		= b.[COL2]		
      ,a.[COL3]		= b.[COL3]		
--  where 
  FROM  
	[myTable2] a
  JOIN 
	[]myTable1] b ON a.[FileName] = b.[FileName]



--UPDATE T1
--SET    address = T2.address,
--       phone2 = T2.phone
--FROM   #Table1 T1
--       JOIN #Table2 T2
--         ON T1.gender = T2.gender
--            AND T1.birthdate = T2.birthdate

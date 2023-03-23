SELECT [Date]
      ,TRY_CONVERT(float, [COL1] ) AS COL1
      ,TRY_CONVERT(float, [COL2] ) AS COL2
      ,TRY_CONVERT(float, [COL3] ) AS COL3
      ,TRY_CONVERT(float, [COL4] ) AS COL4
      ,COL4
      ,COL5
      ,COL6
      ,COL7
  INTO C6      
FROM [SampleTable]  

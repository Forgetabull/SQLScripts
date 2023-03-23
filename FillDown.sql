SELECT t.[TimeStamp],
       t.[Direction],
       Isnull(t.timestampvel, Max([timestampvel]) OVER( partition BY grp)) [TimeStampVel],
	   Isnull(t.velocity,     Max([velocity])     OVER( partition BY grp)) [Velocity],
       CASE
         WHEN t.velocity IS NULL THEN 'YES'
         ELSE 'NO'
       END AS [Changed]
INTO 
	[SampleTable01]
FROM   (SELECT t.*,
               Sum(CASE
                     WHEN [timestampvel] IS NULL THEN 0
                     ELSE 1
                   END)
                 OVER(
                   ORDER BY [timestamp]) grp
        FROM   SampleTable01_Raw t) t
--WHERE  [timestamp] >= '2018-07-21 08:02:29.110'
ORDER  BY 1 

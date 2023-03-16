
SELECT   DATEADD(MINUTE, DATEDIFF(MINUTE, '2000', aa.[FiveMin_DT_plus2hr]) / 120 * 120, '2000') AS [date_truncated],
         COUNT(*) AS [records_in_interval],
         AVG(mycolumntoaggregate) AS [average_value]
FROM     mytable AS aa
GROUP BY DATEADD(MINUTE, DATEDIFF(MINUTE, '2000', aa.[FiveMin_DT_plus2hr]) / 120 * 120, '2000')
ORDER BY [date_truncated]


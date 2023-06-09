SELECT 
	a.[TimeStamp],
	a.[COLUMN1],
	LAG(a.[COLUMN1]) OVER (ORDER BY a.[TimeStamp]) PreviousValue,
	a.[COLUMN1] - LAG(a.[COLUMN1]) OVER (ORDER BY a.[TimeStamp]) DifferenceToPreviousValue,
	LEAD(a.[COLUMN1]) OVER (ORDER BY a.[TimeStamp]) NextValue,
	a.[COLUMN1] - LEAD(a.[COLUMN1]) OVER (ORDER BY a.[TimeStamp]) DifferenceToNextValue
FROM 
	myTable a

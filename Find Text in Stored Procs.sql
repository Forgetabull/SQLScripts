SELECT OBJECT_NAME(object_id)
    FROM sys.sql_modules
    WHERE --OBJECTPROPERTY(object_id, 'IsProcedure') = 1
    --AND 
	--definition LIKE '%insert into %textIWantToFind%'
	definition LIKE '%textIWantToFind%'

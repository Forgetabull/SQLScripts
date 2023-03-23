SELECT NAME, 
       type_desc, 
       Object_definition(object_id) 
FROM   sys.procedures 
WHERE  type_desc = 'SQL_STORED_PROCEDURE' 
ORDER  BY 1; 

SELECT NAME, 
       definition 
FROM   sys.objects o 
       JOIN sys.sql_modules m 
         ON m.object_id = o.object_id 
WHERE  o.type = 'V' 
ORDER BY 1;
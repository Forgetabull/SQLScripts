-- PLSQL
SELECT 
    GIVEN_NAME,
    SURNAME, 
    USER_ID
FROM 
(
    SELECT           
          GIVEN_NAME,
          SURNAME, 
          USER_ID,
          RANK() OVER (PARTITION BY GIVEN_NAME ORDER BY surname) "RowNumber"
    FROM 
          TV_T_BASIS_USER
)
WHERE 
      "RowNumber" = 1
ORDER BY
      GIVEN_NAME         


-- TSQL 
SELECT TOP 1 WITH TIES
       GIVEN_NAME,
       SURNAME,
       USER_ID
FROM 
      TV_T_BASIS_USER
ORDER BY
      ROW_NUMBER() OVER(PARTITION BY GIVEN_NAME ORDER BY surname)          

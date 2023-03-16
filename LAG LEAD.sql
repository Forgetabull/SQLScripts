SELECT
LAG(p.FirstName) OVER (ORDER BY p.BusinessEntityID) PreviousValue,
p.FirstName,
LEAD(p.FirstName) OVER (ORDER BY p.BusinessEntityID) NextValue
FROM Person.Person p
GO

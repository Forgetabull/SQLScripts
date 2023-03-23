exec sp_execute_External_script @language =N'R',
@script=N'
# My first program in R Programming
myString <- "Hello, World!"
print ( myString)
'
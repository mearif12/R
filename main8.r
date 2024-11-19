#String

    #String operations in R:
    #1.Find the length of a string
    #2.Join two strings
    #3.Compare two strings
    #4.Change the string case
    #toupper() - convert string to uppercase
    #tolower() - convert string to lowercase
    #use of cat() to omit backslash.
    
#use the nchar() method to find the length of a string.
msg <- 'Programming'
nchar(msg)    #11

#use the paste() function to join two or more strings together.
txt <- 'with R'
paste(msg,txt) #"Programming with R"

#use the == operator to compare two strings. If two strings are equal,
#the operator returns TRUE. Otherwise, it returns FALSE.

print(msg == txt) #FALSE

#change case of string
text <- "\"R\" Programming"
upper <- toupper(text)
lower <- tolower(text)

cat('Uppercase:',upper)
cat('\nLowercase:',lower)

#Logical operators

  #The output of a comparison is a boolean value.
  #AND operator (&),OR operator (|),NOT operator (!).

x <- 5
y <- 6
z <- 7

print(x > y) #FALSE

print (x <y & y < z) #TRUE

print(is.numeric(x) & (x < z)) #TRUE

#Vectors

   #A vector is the basic data structure in R that stores data of similar types. 
   #use the c() function to create a vector.
   #access elements of a vector using the index number (1, 2, 3, …).

lang <- c('JS','C','R','Ruby')

print(lang[1])  #JS 
cat('initial vector: ', lang,length(lang))

lang[4] <- 'C++'
cat('\nModified vector: ',lang)

#vector with number sequence

num <- 1:5
cat('\nprinting 1 to 5: ',num)

#repeat vectors

# repeat sequence of vector 2 times
numbers<- rep(c(2,4,6),times=2)#246 246
cat('\nUsing times argument: ',numbers)

# repeat each element of vector 2 times
evens <- rep(c(2,4,6),each=2)#22 44 66
cat('\nUsing each argument: ',evens)

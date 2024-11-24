#Matrix

  #matrix(vector, nrow, ncol,byrow) to create a matrix.
  #The syntax to access a matrix element is 'matrix[n1, n2]'.
  #n1 - specifies the row position,n2 - specifies the column position
  #[n, ] - returns the entire element of the nth row.
  #[ ,n] - returns the entire element of the nth column.
  #[c(n1,n2), ] - returns the entire element of n1 and n2 row.
  #[ ,c(n1,n2)] - returns the entire element of n1 and n2 column.
  #cbind() - combines two matrices by columns
  #rbind() - combines two matrices by rows.
  #use the %in% operator to check if the specified element
  #is present in the matrix or not.

mat <- matrix(c(1,2,3,4,5,6),nrow=2,ncol=3,byrow=TRUE)
print(mat)
mat[2,3] = 7 #modifing elements
cat('\naccess element: ',mat[1,2])
cat('\nThe second column element: ',mat[ ,2])

7 %in% mat #TRUE
8 %in% mat #FALSE

#List

  #A List is a collection of similar or different types of data.

summary <- list('ICE',14,'PUST')
print(summary[1])

append(summary,12.0)
print(summary)

  #using a list index and add negative sign - to indicate we want to delete the item
summary[-2]
print(summary)  
cat('Total elements: ',length(summary))

# list also support looping, %checking%

#Array

    #An Array is a data structure which can store data
    # of the same type,in more than two dimensions.
    # array(vector,dim(nrow,ncol,nmat)).
    #[c(n), ,mat_level] - returns the entire element of the nth row.
    #[ ,c(n), mat_level] - returns the entire element of the nth column.

array1 <- array(c(1:12), dim = c(2,3,2))

print(array1)

# access element at 1st row, 3rd column of 2nd matrix
cat("\nDesired Element:", array1[1, 3, 2])

# access entire elements at 1st row of 2nd matrix
cat("\n1st Row Elements of 2nd Matrix:", array1[c(1), ,2])

#find total elements in array1 using length()
cat("Total Elements:", length(array1))


11 %in% array1 # TRUE

13 %in% array1 # FALSE

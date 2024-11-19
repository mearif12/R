#Function

 
#inside print()
func_name <- function(x) {
    print(paste('multiplication of x*x: ',x*x))
}  
func_name(5)#25

#returning
power <- function(a,b){
    return (a^b)
}
print(paste('a power b is: ',power(2,3)))


#adding by nested function
add <- function(a){
    aug<- function(b){
        return(a+b)
    }
    return(aug)
}
result <- add(3)
print(result(4))

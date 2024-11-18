#Variables and Constants:

  #variable:boolean,integer,floating,character,string.
  #In R, we can declare constants using the <- symbol.
  #there are 4 specific types of R constants - Null, NA, Inf, NaN.
  #Built in contants is used by print(constant)
  #LETTERS - to display a list of all uppercase letters.
  #letters - to display a list of all small letters
  #month.abb - to print 3 letter abbreviations of all English months
  #pi - to print the numerical value of the constant pi


#variables--
bool = FALSE
int = 12L
c = 'a'
print(bool)
print(class(bool))

print(int)
print(class(int))

print(c)
print(typeof(c))

#constants--
c<-'c'
print(c)
print(class(c))

numeric <- 3e-3
print(numeric)#0.003

#complex constant

com <- 2+5i
print(class(com))

#NULL - to declare an empty R object. For example,

x <- NULL 
print(x)

#Inf/-Inf - represents positive and negative infinity. For example,
y <- 2^2000
print(y)

#NaN (Not a Number)

z <- (0/0)
print(z)

#NA - represents value which is not available.
print(NA + 2)

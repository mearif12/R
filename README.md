# R full documentation

#### Introduction to R :

```
#Introduction

# To install R on your Windows, just follow these steps:

# 1.Install VS Code
# 2.Download the R Installer File
# 3.Run the Installer
# 4.Install R
# 5.Add R 'bin' location to the PATH Environment Variable Manually
# 6.Verify the Installation


greet<- 'Hello Friend'

print(greet)
```

#### Data-types :

```
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
```

#### Output :

```
#Output

  #Raw Data Type:A raw data type specifies values as raw bytes.
  #charToRaw() - converts character data to raw data
  #rawToChar() - converts raw data to character data

raw_data <- charToRaw('Hello there')
print(raw_data)
print(class(raw_data))

char_data <- rawToChar(raw_data)
print(char_data)
print(class(char_data))

#You can also print a string and variable together using the print(),
#For this, you have to use the paste(),for no space between words paste0().

roll <- 12
print(paste('ME Arif',roll))

#The sprintf() function of C Programming can also be used in R. 
#It is used to print formatted strings.
#%c->character,%i->decimal,%e->scientific notation,%f->float,
#%u->unsigned decimal,%p->pointer address.
myStr <- 'welcome to R'
sprintf('Intro: %s',myStr)
```

#### Operators :

```
#Logical operators

  #The output of a comparison is a boolean value.
  #AND operator (&),OR operator (|),NOT operator (!).

x <- 5
y <- 6
z <- 7

print(x > y) #FALSE

print (x <y & y < z) #TRUE

print(is.numeric(x) & (x < z)) #TRUE
```

#### Conditional statement :

```
#if....else statement

  #to take user input use 'readline(prompt='Placeholder:')'
  #ifelse(test_expression, true_statement, false_statement)

num <- 6

if(num > 0){
    print(paste( 'positive'))
} else if(num < 0){
    print(paste( 'negative'))
} else{
    print(paste('zero'))
}

#input vector
x <- c(12,13,14,15)

ifelse(x %% 2 == 0,'Even','Odd')
```

#### Looping :

```
#Looping

   #use 'break' and 'next' to stop iteration and skip iteration.
   #initialize,while(condition){update}
   #initialize,for(i in var_name){//block of codes}
   #the 'repeat' loop does not have any condition to terminate the loop.

#1+3+5+7+9 =25
number = 1
sum = 0

while(number <= 10){
    if(number %% 2 == 0){
        number = number + 1
        next
    }
    print(number)
    sum = sum + number
    number = number + 1
}
print(sum)

#1,2,3,4,5

vec <- c(1,2,3,4,5,6,7,8,9,10)

for(i in vec){
    if(i == 6){
        break
    }
    print(i)
}

#9,8,7,6,5,4,3,2,1
x = 10

repeat{
    x = x - 1
    if(x == 0){
        break
    }
    print(x) 
}
```

#### Function :

```
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
```

#### String operations :

```
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
```

#### Vector :

```
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
```

#### Matrix :

```
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
```

#### Array :

```
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
```

#### Data Frame :

```
#Data Frame

   #A data frame is a two-dimensional data structure which can store data in tabular format.
   #Data frames have rows and columns and each column can be a different vector.
   #And different vectors can be of different data types.
   #In R, we use the rbind() and the cbind() function to combine two data frames together.
   #In R, we use the length() function to find the number of columns in a data frame. 

#In R, we use the data.frame() function to create a Data Frame.

dataframe <- data.frame(
    name = c('Rafi','safi','kafi'),
    roll = c(14,18,20),
    card = c(TRUE,FALSE,TRUE)
)
print(dataframe)

#accessing data column
print(dataframe[1])

#rbind() - combines two data frames vertically
#cbind() - combines two data frames horizontally
# create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz"),
  Age = c(22, 15)
)

dataframe2 <- data.frame (
  Hobby = c("Tennis", "Piano")
)

# combine two data frames horizontally 
updated <- cbind(dataframe1, dataframe2)
print(updated)

# length of a data frame
dataframe3 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE)
)

cat("Total Elements:", length(dataframe3))
```

#### Factor : 

```
#Factor

   #A Factor is a data structure that is used to work with categorizable datas.
   #In R, we use the factor(vector) function to create a factor.

fact <- factor(c('male','female','Non','female'))
print(fact)

#Modifing & Accessing
fact[3]<- 'male'
print(fact)
```

#### CSV file handling :

```
#CSV file

  #The CSV (Comma Separated Value) file,
  # is a plain text file that uses a comma to separate values.
  #In R, we use the read.csv() function to read a CSV file available in our current directory.
  #In R, we use the subset() function to return all the datas from a CSV file that satisfies the specified condition. 
  #n R, we use the write.csv() function to write into a CSV file. We pass the data in the form of dataframe.

data <- read.csv('travel.csv')  
print(data)

# print total number of columns
cat("Total Columns: ", ncol(data))

# print total number of rows
cat("\nTotal Rows:", nrow(data))

# return minimum value of 1960 column of airtravel.csv
 min_data <- min(data[4])  # 390
 print(min_data)

# return maximum value of 1958 column of airtravel.csv
 max_data <- max(data[2])  # 505
 print(max_data)

#return subset of csv where number of air 
# traveler in 1958 should be greater than 400
sub_data <- subset(data, 1958 > 400) 

print(sub_data)


# writing a csv file
dataframe1 <- data.frame (
  Name = c("Juan", "Alcaraz", "Simantha"),
  Age = c(22, 15, 19),
  Vote = c(TRUE, FALSE, TRUE))

# write dataframe1 into file1 csv file
write.csv(dataframe1, "file1.csv",quote=FALSE)
```

#### Dataset :

```
# R DataSet

   #A dataset is a data collection presented in a table.
   #The R programming language has tons of built-in datasets,
   #that can generally be used as a demo data to illustrate how the R functions work.
   #airquality - New York Air Quality Measurements
   #AirPassengers - Monthly Airline Passenger Numbers 1949-1960
   #mtcars - Motor Trend Car Road Tests
   #iris - Edgar Anderson's Iris Data

# to see the data set
print(airquality)

#Get information of Dataset
# use dim() to get dimension of dataset
cat("Dimension:",dim(airquality))

# use nrow() to get number of rows
cat("\nRow:",nrow(airquality))

# use ncol() to get number of columns
cat("\nColumn:",ncol(airquality))

# use names() to get name of variable of dataset
cat("\nName of Variables:",names(airquality))
# display all values of Temp variable
print(airquality$Temp)
# sort values of Temp variable
sort(airquality$Temp)
# get statistical summary of Temp variable
summary(airquality$Temp)
```

#### min & max :

```
#R min and max

   #For min() => min(collection, na.rm = Boolean)
   #For max()=> max(collection, na.rm = Boolean)
   #collection - is a vector or data frame
   #na.rm (optional) - is a boolean value that,
   #indicates whether value should be kept or removed.

numbers <- c(2,4,6,8,10)
 
# return minimum value present in numbers
min(numbers)  # 2

characters <- c("s", "a", "p", "b")

# return alphabetically minimum value in characters
min(characters)  # "a" 


numbers <- c(2,4,6,8,10)
 
# return largest value present in numbers
max(numbers)  # 10

characters <- c("s", "a", "p", "b")

# return alphabetically maximum value in characters
max(characters)  # "s"


# Create a data frame
dataframe1 <- data.frame (
  Name = c("Juan", "Kay", "Jay", "Ray", "Aley"),
  Age = c(22, 15, 19, 30, 23),
  ID = c(101, 102, 103, 104, 105)
)

# return maximum value of Age column of dataframe1
print(max(dataframe1$Age)) # 30

# return minimum value of ID column of dataframe1 
print(min(dataframe1$ID)) # 101
```

#### Central tendency :

```
#R mean, median , mode & percentile

    #Mean, Mode, and Median are measurements of central tendency. 
    #A percentile is a statistical measure that indicates,
    #the value below which a percentage of data falls.

# vector of marks
marks <- c(97, 78, 57, 64, 64, 87)

Mean <- mean(marks)
Median <- median(marks)
Quantile <- quantile(marks,c(0.70,0.80)) #calculate 70th,80th percentile of marks
print(Mean)
print(Median)
print(Quantile)

#Calculating Mode
mode <- function() {
  # calculate mode of marks  
  return(names(sort(-table(marks)))[1])
}
mode()



# # Create a data frame
# dataframe1 <- data.frame (
#   Name = c("Juan", "Kay", "Jay", "Ray", "Aley"),
#   Age = c(22, 15, 19, 30, 23),
#   ID = c(101, 102, 103, 104, 105)
# )

# # calculate 55th and 27th percentile of the Age column
# result <- quantile(dataframe1$Age, c(0.55, 0.27))

# print(result)
```

#### Date,class & object :

```
#R date,class & object

   Sys.Date() #YYYY-MM-DD

   Sys.time() #YYYY-MM-DD HH:MM:SS +GMT 

#R S3 class:
# create a list with required components
student1 <- list(name = "John", age = 21, GPA = 3.5)
# name the class appropriately
class(student1) <- "Student_Info"
# create and call an object
student1   


#R S4 class:
# create a class "Student_Info" with three member variables
setClass("Student_Info", slots=list(name="character", age="numeric", GPA="numeric"))
# create an object of class 
student1 <- new("Student_Info", name = "John", age = 21, GPA = 3.5)
# call student1 object 
student1


#R reference class:
# create a class "Student_Info" with three member variables
Student_Info <- setRefClass("Student_Info",
  fields = list(name = "character", age = "numeric", GPA = "numeric"))
# Student_Info() is our generator function which can be used to create new objects
student1 <- Student_Info(name = "John", age = 21, GPA = 3.5)
# call student1 object
student1
```

#### Plot :

```
#R plot
     
     #open 'R GUI' to show visualize output.

#Barplot     
temperatures <- c(22, 27, 26, 24, 23, 26, 28)

result <- barplot(temperatures, 
  main = "Maximum Temperatures in a Week", 
  xlab = "Degree Celsius",
  ylab = "Day",
  names.arg = c("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"),
  col = "blue"
)

print(result)


#Histogram

temperatures <- c(67 ,72 ,74 ,62 ,76 ,66 ,65 ,59 ,61 ,69 )

# histogram of temperatures vector
result <- hist(temperatures,
  main = "Histogram of Temperature",
  xlab = "Temperature in degrees Fahrenheit",
  col = "red",
  xlim = c(50,100),
  ylim = c(0, 5))

print(result)


#Pie Chart

expenditure <- c(600, 300, 150, 100, 200)

result <- pie(expenditure,
  main = "Monthly Expenditure Breakdown",
  labels = c("Housing", "Food", "Cloths", "Entertainment", "Other"),
  col = c("red", "orange", "yellow", "blue", "green")
)

print(result)


#Plot function

 #we have used the plot(1:5) and the : operator to draw a sequence of points,
 #the plots are drawn in (1, 1), (2, 2), (3, 3), (4, 4), (5, 5) order.

 #we can change the 'type' of plot using the 'type' parameter inside the plot() function.
 #Value	Description
 #"p"	Points Plot (Default)
 #"l"	Line Plot
 #"b"	Both Line and Points
 #"s"	Step Plot
 #"n"	No Plotting
 #"h"	Histogram-like Plot

x <- c(2, 4, 6, 8) 
y <- c(1, 3, 5, 7)
plot(x, y)

#creating a line
plot(1:5,
  main="Plot Sequence of Points", 
  xlab="x-axis", 
  ylab="y-axis",
  type="l") 


#Save plot

    #save as png(),jpeg(),pdf()

# save as png image in specific directory with 600*350 resolution
png(file="C:/Programiz/R-tutorial/histrogram2.png",
width=600, height=350)

# a histogram we want to save
hist(airquality$Temp)

# a function call to save the file
dev.off()    
```
- - - - - - - - - - - - THE END 

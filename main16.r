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

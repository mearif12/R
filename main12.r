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

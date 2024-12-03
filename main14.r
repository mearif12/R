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

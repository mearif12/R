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

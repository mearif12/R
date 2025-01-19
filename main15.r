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

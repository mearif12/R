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

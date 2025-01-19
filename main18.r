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

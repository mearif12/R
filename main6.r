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

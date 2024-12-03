#Factor

   #A Factor is a data structure that is used to work with categorizable datas.
   #In R, we use the factor(vector) function to create a factor.

fact <- factor(c('male','female','Non','female'))
print(fact)

#Modifing & Accessing
fact[3]<- 'male'
print(fact)

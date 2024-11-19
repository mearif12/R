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

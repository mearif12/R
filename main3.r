#Output

  #Raw Data Type:A raw data type specifies values as raw bytes.
  #charToRaw() - converts character data to raw data
  #rawToChar() - converts raw data to character data

raw_data <- charToRaw('Hello there')
print(raw_data)
print(class(raw_data))

char_data <- rawToChar(raw_data)
print(char_data)
print(class(char_data))

#You can also print a string and variable together using the print(),
#For this, you have to use the paste(),for no space between words paste0().

roll <- 12
print(paste('ME Arif',roll))

#The sprintf() function of C Programming can also be used in R. 
#It is used to print formatted strings.
#%c->character,%i->decimal,%e->scientific notation,%f->float,
#%u->unsigned decimal,%p->pointer address.
myStr <- 'welcome to R'
sprintf('Intro: %s',myStr)

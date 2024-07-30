first_string <- "Hello"
last_string <- "Good Day"
name <- "Nirmal"
percent <- 90

print(paste(first_string, name, last_string, sep = " "))
print(paste("This is my concat",name,"with",Last_string)) # displays with space #This is my concat Nirmal with Good Day
paste("This is my concat",name,"with",Last_string) # this too would print in the console
paste0("This is my concat",name,"with",Last_string) # displays without space  #This is my concatNirmalwithGood Day

sprintf("%s scores %f%% in Maths!!! ","Nirmal",90)
sprintf("%s scores %f percent in Maths !!!",name,percent)

# sprintf("%s scores %f percent in Maths !!!",percent,name)  
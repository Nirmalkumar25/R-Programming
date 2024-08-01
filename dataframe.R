# Correct way 
df <- data.frame(name=c("Nirmal","Vetri","Sakthivel"),age=c(29,2,59),children=c(TRUE,FALSE,TRUE))
# Wrong way
#df <- data.frame(name<-c("Nirmal","Vetri","Sakthivel"),age<-c(29,2,59),children<-c(TRUE,FALSE,TRUE))

class(df) # data.frame
typeof(df) # list

name <- c("Neelavathi","Naveenkala","Valli")
age <- c(55,25,77)
married <- c(T,F,T)

df1 <- data.frame(Name=name,Age=age,Married=married)
df1


#        Name Age Married
#1 Neelavathi  55    TRUE
#2 Naveenkala  25   FALSE
#3      Valli  77    TRUE


df2 <- data.frame(name,age,married)
df2

# '''
#         name age married
# 1 Neelavathi  55    TRUE
# 2 Naveenkala  25   FALSE
# 3      Valli  77    TRUE
# '''
str(df2)

# '''
# "data.frame":   3 obs. of  3 variables:
# $ name   : chr  "Neelavathi" "Naveenkala" "Valli"
# $ age    : num  55 25 77
# $ married: logi  TRUE FALSE TRUE
# '''

df[3,3] # TRUE
df[3,2] # 59

df[1,1] # Nirmal
df[1,2] # 29
df[1,3] # TRUE

df2[2,"age"] # 25

df2[1,]

# '''
#      name age married
# 1 Neelavathi  55    TRUE
# '''

df["age"] # accessing as a dataframe 

# '''
#   age
# 1  29
# 2   2
# 3  59
# '''

df[2] # accessing as a dataframe 

# '''
#   age
# 1  29
# 2   2
# 3  59
# '''

df$age # accessing as a list  -> 29  2 59

df[["age"]] # accessing as a list  -> 29  2 59

df[[2]] # accessing as a list  -> 29  2 59

df2[c(2,3),c("age")]  # 25 77
df2[c(2,3),c("name")] # "Naveenkala" "Valli" 
df2[c(1,3),c("name")] # "Neelavathi" "Valli"

typeof(df["age"]) # list
typeof(df[["age"]]) # double

typeof(df["name"]) # list
typeof(df[["name"]]) # character


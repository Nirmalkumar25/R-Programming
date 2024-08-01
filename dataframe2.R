name <- c("Sundar","Azhagan","Murugan","Ganapathy","Venkatajalapathy")
age <- c(24,25,26,26,24)
graduated <- c(T,F,F,F,T)

std.details <- data.frame(name,age,graduated)
std.details

#               name age graduated
# 1           Sundar  24      TRUE
# 2          Azhagan  25     FALSE
# 3          Murugan  26     FALSE
# 4        Ganapathy  26     FALSE
# 5 Venkatajalapathy  24      TRUE

percent.12 <- c(76.5,84.6,96.8,57.2,99)
dept <- c("IT","CSE","EEE","ECE","BIOTECH")
id <- c(123,456,789,098,765)

std.details$percent.in.12 <- percent.12
std.details

std.details['department'] <- dept
std.details

std.details[["id"]] <- id
std.details

#               name age graduated percent.in.12 department  id
# 1           Sundar  24      TRUE          76.5         IT 123
# 2          Azhagan  25     FALSE          84.6        CSE 456
# 3          Murugan  26     FALSE          96.8        EEE 789
# 4        Ganapathy  26     FALSE          57.2        ECE  98
# 5 Venkatajalapathy  24      TRUE          99.0    BIOTECH 765

today.absent <- c(T,F,F,T,F)

std.details <- cbind(std.details,is_absent_today=today.absent)
std.details

#               name age graduated percent.in.12 department  id is_absent_today
# 1           Sundar  24      TRUE          76.5         IT 123            TRUE
# 2          Azhagan  25     FALSE          84.6        CSE 456           FALSE
# 3          Murugan  26     FALSE          96.8        EEE 789           FALSE
# 4        Ganapathy  26     FALSE          57.2        ECE  98            TRUE
# 5 Venkatajalapathy  24      TRUE          99.0    BIOTECH 765           FALSE

# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------
# rows contains data element of different classes
# cols contains data element of same classes
# so cbind() - can be used to add extra column to the dataframe
# but rbind() - can't be used to add rows of different data elements as rbind() - takes vectors - vectors implicity convert every data element into single class
# so in the case we need to create a new dataframe and add it to the existing dataframe
# ------------------------------------------------------------------------------------------------------------------------------------------------------------------------

sasi <- data.frame(name="Sasidharan",age=25,graduated=T,
                    percent.in.12=95,department="BIOLOGY",
                    id=45,is_absent_today=F)

rbind(std.details,sasi) # adding extra row

# ----------------------------------------------------
# ORDERING THE DATAFRAME USING age COLUMN BY ASCENDING
# ----------------------------------------------------
std.details[order(std.details$age),] # one way of ordering the dataframe by age
 
order.by.age <- order(std.details$age)

order.by.age # 1 5 2 3 4 -> gives the ranking of the values present in the given column

std.details[order.by.age,] # other way of ordering the dataframe by age

#               name age graduated percent.in.12 department  id is_absent_today
# 1           Sundar  24      TRUE          76.5         IT 123            TRUE
# 5 Venkatajalapathy  24      TRUE          99.0    BIOTECH 765           FALSE
# 2          Azhagan  25     FALSE          84.6        CSE 456           FALSE
# 3          Murugan  26     FALSE          96.8        EEE 789           FALSE
# 4        Ganapathy  26     FALSE          57.2        ECE  98            TRUE

# -----------------------------------------------------
# ORDERING THE DATAFRAME USING age COLUMN BY DESCENDING
# -----------------------------------------------------
std.details[order(std.details$age,decreasing=TRUE),]

desc.order.by.age <- order(std.details$age,decreasing=T)

desc.order.by.age # 3 4 2 1 5

std.details[desc.order.by.age,]

#               name age graduated percent.in.12 department  id is_absent_today
# 3          Murugan  26     FALSE          96.8        EEE 789           FALSE
# 4        Ganapathy  26     FALSE          57.2        ECE  98            TRUE
# 2          Azhagan  25     FALSE          84.6        CSE 456           FALSE
# 1           Sundar  24      TRUE          76.5         IT 123            TRUE
# 5 Venkatajalapathy  24      TRUE          99.0    BIOTECH 765           FALSE



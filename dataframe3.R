# data()->  display the available limited dataset in R
# data(package = .packages(all.available = TRUE)) -> display all the available dataset in R #nolint
# data(dataset) -> read the dataset
# head() -> displays first 6 rows of data
# View() -> Works only in R Studio -  view the dataset in the form of table
# tail() -> displays last 6 rows of data
# summary() -> statistical summmary of a dataset
# str() -> structure of a dataset


data(iris)
head(iris)
View(iris)
tail(iris)

summary(iris)

# Sepal.Length    Sepal.Width     Petal.Length    Petal.Width
#  Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100
#  1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300
#  Median :5.800   Median :3.000   Median :4.350   Median :1.300
#  Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199
#  3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800
#  Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500
#        Species
#  setosa    :50
#  versicolor:50
#  virginica :50

str(iris)

# 'data.frame':   150 obs. of  5 variables:
#  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ... # nolint

days <- c("mon", "tue", "wed", "thurs", "fri")
temp <- c(25.6, 30.3, 45, 37.3, 41.2)
rain <- c(TRUE, TRUE, FALSE, FALSE, TRUE)

df <- data.frame(days, temp, rain)
df
print("-------- SUMMARY DETAILS ---------")
summary(df)
print("-------- STRUCTURE DETAILS ----------")
str(df)

df[, 1] # first column
# "mon"   "tue"   "wed"   "thurs" "fri"

df[1, ] # first row
#   days temp rain
# 1  mon 25.6 TRUE

df[, "temp"] # get the value of the given column
# 25.6 30.3 35.0 37.3 41.2

df[2:4, c("days", "temp")] # get 2,3,4 rows of days and temp columns
#    days temp
# 2   tue 30.3
# 3   wed 35.0
# 4 thurs 37.3

df[c(2, 4), c("days", "temp")] # get 2nd and 4th rows of days and temp columns
#    days temp
# 2   tue 30.3
# 4 thurs 37.3

df$rain # get all values of column "rain"
# TRUE  TRUE FALSE FALSE  TRUE

df$days # get all values of column "days"
# "mon"   "tue"   "wed"   "thurs" "fri"

df["rain"] # get all values of column "rain" in the dataframe format
df["days"] # get all values of column "days" in the dataframe format

subset(df, subset = rain == TRUE)
#   days temp rain
# 1  mon 25.6 TRUE
# 2  tue 30.3 TRUE
# 5  fri 41.2 TRUE

subset(df, rain == TRUE)
#   days temp rain
# 1  mon 25.6 TRUE
# 2  tue 30.3 TRUE
# 5  fri 41.2 TRUE

subset(df, rain == TRUE, select = c("temp", "rain"))
#   temp rain
# 1 25.6 TRUE
# 2 30.3 TRUE
# 5 41.2 TRUE

order(df$temp) # 1 2 4 5 3

sorted_temp <- order(df$temp)
df[sorted_temp, ]

#    days temp  rain
# 1   mon 25.6  TRUE
# 2   tue 30.3  TRUE
# 4 thurs 37.3 FALSE
# 5   fri 41.2  TRUE
# 3   wed 45.0 FALSE

authors <- data.frame(
    surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")), #nolint
    nationality = c("US", "australia", "US", "UK", "Australia"),
    deceased = c("yes", rep("no", 4)))

books <- data.frame(
    name = I(c("Tukey", "Venables", "Tierney", "Ripley", "Ripley","McNeil", "R Core")), #nolint
    title = c("Exploratory Data analysis", "Modern Applied Statistics", "LISP-STAT", "Spatial statistics", "Stochastic Simulation", "Interactive Data Analysis", "An Introduction to R"),  #nolint
    other_author = c(NA, "Ripley", NA, NA, NA, NA, "Venables & Smith"))  #nolint

print("AUTHORS")
authors
print(("BOOKS"))
books

(m1 <- merge(authors, books, by.x = "surname", by.y = "name"))

id <- 101:110
product <- c("A", "B")
price <- as.integer(runif(10, 100, 200))
qty <- as.integer(runif(10, 10, 20))
salesreport <- data.frame(Id = id, Product = product, UnitPrice = price, Qty = qty) #nolint
print("SALESREPORT")
print("-----------")
salesreport

transpose_salesreport <- t(salesreport)
View(transpose_salesreport)
head(transpose_salesreport)

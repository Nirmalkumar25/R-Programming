# List
# List is a generic vector which contain object of different base types
# there is no coercion in list and no loss of functionality
# list() - function to create a dataframe
# is.list() -  function to check whether the variable(object) is list or not
# names(listvariable) - function to provide a name to the list by creating vector of names
# str(listvariable) - function to get the detailed information about the given list
# list.name$product == list.name[["product"]] - method to get the data using the name


# list with column names( i.e x,y,z)
list.1 <- list(x=c("a","b","c"),
            y=c(TRUE,FALSE,F,T,F),
            z=c(45,34,76,567))
list.1

# list without column names
list.2 <- list(1,23,4)
list.2

# vector
test1 <- c("AirPod",50,5)
test1

# list
test2 <- list("AirPod",50,5)
test2

# is-list()
is.list(test2) # TRUE
is.list(test1) # FALSE

# names()
names(test2) <- c("Product","Available","Rating")
test2

# Getting list elements using their indices
test2[[1]] # AirPod
test2[[2]] # 50
test2[[3]] # 5

# Getting list elements using their names
print("---Getting list elements using their names---")
test2[["Product"]] # AirPod
test2[["Available"]] # 50
test2[["Rating"]] # 5

# Creating the list with column names

prod <- list(product="AirPod",cost=1000,available=50,rating=5)
prod
str(prod) # to get the detailed information about the list
# List of 4
#  $ product  : chr "AirPod"
#  $ cost     : num 1000
#  $ available: num 50
#  $ rating   : num 5

similar.prod <- list(product="Charger",cost=350,avaible=1500,rating=4)
similar.prod

new.prod <- list(prod,similar.prod)
new.prod
print(paste('New Prod-->',new.prod))

# list of list
new.prod.1 <- list(product="WiredHeadset",cost=150,available=2000,rating=4.5,similar=similar.prod)
new.prod.1

# Fetching data by logical operator
print(new.prod.1[c(F,T,T,T,T)]) # TRUE or FALSE to the indices of the list, if we provide FALSE in place of index, it will not consider that index and if TRUE in place of index, it will consider it and return the outcome of the index

# Fetching data directly providing the name
prod$product
prod$cost
prod$available
prod$rating


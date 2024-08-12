# BASIC OPERATIONS ON VECTORS
# ---------------------------
vec1 <- c(3, 1, 6)
vec2 <- c(1, 4, 9)

vec1 + vec2 # 4  5 15
vec1 - vec2 # 2 -3 -3
vec2 - vec1 # -2  3  3
vec1 * vec2 # 3  4 54
vec1 / vec2 # 3.0000000 0.2500000 0.6666667

# IN BUILT OPERATIONS ON VECTORS
# ------------------------------
sum(vec1) # 10
sd(vec1) # 2.516611
var(vec1) # 6.333333
prod(vec1) # 18
max(vec1) # 6
min(vec1) # 1

# COMPARISON OPERATORS
# --------------------

v1 <- c(10, 20, 24)
v2 <- c(10, 50, 17)

v1 < v2 # FALSE  TRUE FALSE
v1 > v2 # FALSE FALSE  TRUE
v1 != v2 # FALSE  TRUE  TRUE
v1 == v2 # TRUE FALSE FALSE

# comparing the entire vector with the single value
# -------------------------------------------------

v1 < 13 # TRUE FALSE FALSE

# slicing the vector
# ------------------

price <- seq(100, 220, 20)
names(price) <- paste0("p", 1:7)

price[3]
#  p3
# 140

price[c(1, 4)]
#  p1  p4
# 100 160

price[c(5, 6)]
#  p5  p6
# 180 200

price[c("p2")]
#  p2
# 120

price[c("p1", "p7")]
#  p1  p7
# 100 220

# Excluding the index

price[c(-2)]
#  p1  p3  p4  p5  p6  p7
# 100 140 160 180 200 220

price[c(-3, -4, -5)]
#  p1  p2  p6  p7
# 100 120 200 220

price[!(names(price) %in% c("p2", "p4", "p6"))]
#  p1  p3  p5  p7
# 100 140 180 220

price[price > 120]
#  p3  p4  p5  p6  p7
# 140 160 180 200 220

v <- c(10, 20, 30, NA, 40, 50)
names(v) <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat")

# Adding scalar value to vector, it adds 5 to every element, but NA will be same
v + 5
# Mon Tue Wed Thu Fri Sat
#  15  25  35  NA  45  55

# Adding vector to the vector,
# the odd element will add to the odd element of the other vector,
# the even element do viceversa

v + c(5, 10)
# Mon Tue Wed Thu Fri Sat
#  15  30  35  NA  45  60

first_two <- v[1:2]
first_two
# Mon Tue
#  10  20

len_v <- length(v)
len_v # 6

print(v[5:1])
# Fri Thu Wed Tue Mon
#  40  NA  30  20  10

v1 <- v[(len_v - 1):len_v]
v1
# Fri Sat
#  40  50

v2 <- v[(len_v - 1):2]
v2
# Fri Thu Wed Tue
#  40  NA  30  20

# To omit NA value from the vector
# --------------------------------
new <- c(10, 20, 30, NA, 50)
na.omit(new) # na.omit() -> along with the value it returns the attributes

# [1] 10 20 30 50
# attr(,"na.action") # nolint
# [1] 4
# attr(,"class") # nolint

# To eradicate the resulting attributes from na.omit, can use as.vector()
# -----------------------------------------------------------------------
# method 1
new1 <- na.omit(new)
as.vector(new1) # 10 20 30 50

# method 2
as.vector(na.omit(new)) # 10 20 30 50

# to find the number which is greater than 20 with non NA values
as.vector(na.omit(new[new > 20])) # 30 50

# to find the number which is multiple of 3 with non NA values
new[(new %% 3) == 0] #  30 NA

as.vector(na.omit(new[(new %% 3) == 0])) # 30

order_details <- c(10, 20, 30, NA, 50)


sum(order_details) # NA - because of NA present in the vector it returns the value as NA  # nolint

# Use na.rm to remove the NA values
sum(order_details, na.rm = TRUE) # 110
sd(order_details, na.rm = TRUE) # 17.07825
mean(order_details, na.rm = TRUE) # 27.5
max(order_details, na.rm = TRUE) # 50
min(order_details, na.rm = TRUE) # 10

# sqrt - Square root function will accept NA - it doesn't through an error
sqrt(order_details) # 3.162278 4.472136 5.477226       NA 7.071068

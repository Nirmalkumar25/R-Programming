# matrix() ->  to create a matrix
# c() ->  to combine the two matrix
# colnames() ->  to provide/get column names to the matrix
# rownames() ->  to provide/get row names to the matrix
# dimnames() -> to get dimension names of the matrix
# nrow() -> to get no of rows in the matrix
# ncol() -> to get no of cols in the matrix
# dim() -> to get dimension of the matrix
# arithmetic operations -> +,-,*,/,^
# colSums() -> to get sum of all cols
# rowSums() -> to get sum of all rows
# rowMeans() -> to get mean of all rows
# colMeans() -> to get mean of all cols
# rbind() -> to add extra row to the matrix
# cbind() -> to add extra col to the matrix
# list() -> to create a list
# Extraction of columns
# Extraction of rows
# mean() -> to find the average value


v <- 20:30
v
matrix(v)

mat1 <- matrix(0, 3, 3)
mat1

#      [,1] [,2] [,3]
# [1,]    0    0    0
# [2,]    0    0    0
# [3,]    0    0    0

mat2 <- matrix(1:9, 3, 3)
mat2

#      [,1] [,2] [,3]
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9


mat3 <- matrix(1:9, nrow = 3, byrow = TRUE)
mat3

#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9


mat4 <- matrix(1:9, 3, 3, byrow = TRUE)
mat4

#      [,1] [,2] [,3]
# [1,]    1    2    3
# [2,]    4    5    6
# [3,]    7    8    9


stock1 <- c(141, 142, 143, 144, 145)
stock2 <- c(151, 152, 153, 154, 155)
stocks <- c(stock1, stock2)
stocks

# [1] 141 142 143 144 145 151 152 153 154 155

stocks_matrix <- matrix(stocks, nrow = 2, byrow = TRUE)
stocks_matrix

#      [,1] [,2] [,3] [,4] [,5]
# [1,]  141  142  143  144  145
# [2,]  151  152  153  154  155

days <- c("Mon", "Tue", "Wed", "Thur", "Fri")
stock_names <- c("Stock1", "Stock2")

colnames(stocks_matrix) <- days
rownames(stocks_matrix) <- stock_names

stocks_matrix

#        Mon Tue Wed Thur Fri
# Stock1 141 142 143  144 145
# Stock2 151 152 153  154 155

nrow(stocks_matrix) # 2
ncol(stocks_matrix) # 5
dim(stocks_matrix) # 2 5

rownames(stocks_matrix) # "Stock1" "Stock2"
colnames(stocks_matrix) # "Mon"  "Tue"  "Wed"  "Thur" "Fri"
dimnames(stocks_matrix)

# [[1]]
# [1] "Stock1" "Stock2"

# [[2]]
# [1] "Mon"  "Tue"  "Wed"  "Thur" "Fri"

# ARITHMETIC OPERATIONS ON MATRIX - QUITE IMPORTANT DURING DATA ANALYSIS
# ----------------------------------------------------------------------

mat <- matrix(1:50, nrow = 5, byrow = TRUE)
mat

mat + 5 # addition to matrix

mat - 5 # subtraction from matrix

mat * 5 # multiplication to matrix

5 / mat # returns the reciprocal

mat / 5 # returns the quotient

mat ^ 2 # exponential

colSums(stocks_matrix)

#  Mon  Tue  Wed Thur  Fri
#  292  294  296  298  300

rowSums(stocks_matrix)

# Stock1 Stock2
#    715    765

rowMeans(stocks_matrix)

# Stock1 Stock2
#    143    153

colMeans(stocks_matrix)

#  Mon  Tue  Wed Thur  Fri
#  146  147  148  149  150

stock3 <- c(161, 162, 123, 143, 122)
tot_stock <- rbind(stocks_matrix, Stock3 = stock3)
tot_stock

avg <- rowMeans(tot_stock)
total_stock <- cbind(tot_stock, Avg = avg)
total_stock

student <-  matrix(c(20, 30, NA, 40, 50, 45, 65, 76, NA, 23, 72, NA, 80, 90, NA, 38, 25), nrow = 4, ncol = 4, byrow = TRUE ) #nolint
dimnames(student) <- list(c("Manoj", "Dravid", "Sudhakar", "Gopi"), c("Phy", "Chem", "Bio", "Maths")) #nolint
student

print("EXTRACTION OF COLUMNS")
# Extraction of columns
student[, 1]
student[, 2:4]
student[, c(3, 4)]

print("EXTRACTION OF ROWS")
# Extraction of rows
student[1, ]
student[2:4, ]
student[c(3, 4), ]

student[3:4, 2:3]
student[1:2, c(3, 4)]

student["Manoj", c("Phy", "Bio")]
student["Gopi", c(2, 4)]

student[c("Sudhakar", "Gopi"), 4]

student[c("Dravid", "Manoj"), c(1, 4)]

mean(student[c("Gopi"), ], na.rm = TRUE)

print("MEAN ON ROW")
apply(student, 1, mean, na.rm = TRUE)

#    Manoj   Dravid Sudhakar     Gopi
# 30.00000 59.00000 47.50000 69.33333

print("MEAN ON COL")
apply(student, 2, mean, na.rm = TRUE)

#      Phy     Chem      Bio    Maths
# 50.00000 47.00000 68.50000 51.33333

apply(student, 2, sum, na.rm = TRUE)

apply(student, 1, sum, na.rm = TRUE)
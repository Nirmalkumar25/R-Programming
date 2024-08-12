# Matrix
# A matrix is a collection of data elements arranged in a two dimensional rectangular layout # nolint
# matrix() -  function to create a matrix
# A matrix is a extended version of vectors (because, implicit coercion takes place) # nolint
# rbind() - bind element by row wise
# cbind() - bind element by column wise
# rownames(matrix_variable) - naming the rows (it should be equal to no. of rows) # nolint
# colnames(matrix_variable) - naming the cols (it should be equal to no. of cols) # nolint


matrix1 <- matrix(1:6, nrow = 2)
matrix1

# matrix with given row and byrow and column will be automatically considered with the length of the vector # nolint
matrix2 <- matrix(1:6, nrow = 2, byrow = TRUE)
matrix2

# matrix with byrow
matrix3 <- matrix(1:6, nrow = 3, ncol = 2, byrow = TRUE)
matrix3

# matrix without byrow
matrix4 <- matrix(1:6, nrow = 2, ncol = 3)
matrix4

# combining matrix and vector using rbind
matrix5 <- rbind(matrix4, 7:9)
matrix5

# combining matrix and vector using cbind
matrix6 <- cbind(matrix4, c(7, 8))
matrix6
class(matrix6)
typeof(matrix6)

# it can be the mixture of datatype, implicit coercion will perform and make it as a same datatype # nolint
matrix7 <- matrix(c("One", 2, "three", 4, "five", 6), nrow = 2, ncol = 3, byrow = TRUE) # nolint
matrix7
class(matrix7)
typeof(matrix7)

# aligns the element in the first row
matrix8 <- rbind(1:6)
matrix8

# aligns the element in first column
matrix9 <- cbind(1:6)
matrix9

# size of the vector can be less than the size of the matrix
matrix10 <- matrix(1:3, nrow = 3, ncol = 2) # (3*2 > 3) # nolint
matrix10

# size of the matrix should not be less than the size of the vector
matrix11 <- matrix(1:6, nrow = 3, ncol = 1) # (3*1 < 6) # nolint
matrix11

# if none of the nrow and ncol given, it arrange it consider ncol=1 and nrow=length of vector # nolint
matrix12 <- matrix(1:3)
matrix12

# naming the rows and columns
n <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE)
rownames(n) <- c("row1", "row2", "row3")
colnames(n) <- c("col1", "col2", "col3")
print(n)

m <- matrix(1:6, nrow = 3, byrow = TRUE)
dimnames <- list(c("row1", "row2", "row3"), c("col1", "col2"))
dimnames

x <- matrix(1:8, ncol = 2)
x
typeof(x) # integer
class(x) # matrix array

y <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
y
typeof(y) # character
class(y) # matrix array

z <- cbind(x,y) # implicit coercion takes place
z
typeof(z) # character
class(z) # matrix array

# other way of creating matrix
# ----------------------------

mat1 <- matrix(0, 3, 3)
mat1 # It will provide 3*3 matrix with value 0

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
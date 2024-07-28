# Vectors
# A sequence of the data elements of the same basic type
# A one dimensional array
# c() - function to declare a vector
# character > numeric > logical - the order of power of conversion
# vector() - function to initialize the vector
# as.factor() -> factor vector function

vec <- c("I","am","a","R","Programmer")
vec
typeof(vec) #character

print("IMPLICIT COERCION FOLLOWS - NUMERIC TO CHARACTER")
print(strrep("*", 50))
# IMPLICIT COERCION
vec1 <- c("I",1,"t",3) # implicitly convert numeric type to character because a vector allows only a same datatype
vec1 # "I" "1" "t" "3"
typeof(vec1) # character
class(vec1)

print("IMPLICIT COERCION OF LOGICAL TO NUMERIC")
print(strrep("*", 50))
vec2 <- c(TRUE,1,FALSE,10)
vec2 #  1  1  0 10
typeof(vec2) # double
class(vec2) # numeric

print("IMPLICIT COERCION OF LOGICAL TO CHARACTER")
print(strrep("*", 50))
vec3 <- c("One",TRUE)
vec3 # "One"  "TRUE"
typeof(vec3) # character
class(vec3) # character

print("Vector of logical operators")
print(strrep("*", 50))
vec4 <- c(T,F)
vec4 # TRUE FALSE
typeof(vec4) # logical
class(vec4) # logical

print("creating vectors using vector() function")
print(strrep("*", 50))
vec5 <- vector("numeric",length=10)
vec5 # 0 0 0 0 0 0 0 0 0 0
class(vec5) # numeric


num.vector <- 1:10
num.vector # 1  2  3  4  5  6  7  8  9 10
class(num.vector) # integer

doub.vector <- c(1:10,10.5)
doub.vector # 1.0  2.0  3.0  4.0  5.0  6.0  7.0  8.0  9.0 10.0 10.5
class(doub.vector) # numeric

char.vector <- letters[1:10]
char.vector # "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"
class(char.vector) # character

factor.vector <- as.factor(char.vector)
factor.vector # Levels: a b c d e f g h i j
class(factor.vector) # factor

print("EXPLICIT COERCISON USING as.factor() function")
print(strrep("*",50))
x <- 0:6
as.numeric(x) # 0 1 2 3 4 5 6
as.character(x) # "0" "1" "2" "3" "4" "5" "6"
as.logical(x) # FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
as.complex(x) # 0+0i 1+0i 2+0i 3+0i 4+0i 5+0i 6+0i

y <- letters[1:5]
as.numeric(y) # NA NA NA NA NA
as.character(y) # "a" "b" "c" "d" "e"
as.logical(y) # NA NA NA NA NA
as.complex(y) # NA NA NA NA NA

# if the element is not coercible, it produces NA

print("ATTRIBUTES")
print(strrep("*",10))
obj <- 1
attributes(obj) # NULL


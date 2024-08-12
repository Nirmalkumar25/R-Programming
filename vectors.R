# Vectors
# A sequence of the data elements of the same basic type
# A one dimensional array
# c() - function to declare a vector
# character > numeric > logical - the order of power of conversion
# vector() - function to initialize the vector
# as.factor() -> factor vector function
# ------------------------------------------------------------------
vec <- c("I","am","a","R","Programmer")
vec
typeof(vec) #character

# Another method to declare vector
# --------------------------------
vec_seq <- seq(1,20)
vec_seq #  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20

vec0 <- 1:10
vec0 # 1  2  3  4  5  6  7  8  9 10

odd_value <- seq(1,10,2)
odd_value # 1 3 5 7 9

even_value <- seq(2,10,2)
even_value # 2  4  6  8 10

# Returns the 
by_select <- seq(from = 21, by = 2, length.out = 10)
by_select # 21 23 25 27 29 31 33 35 37 39

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


# Naming the vector by directly
# -----------------------------
temperature <- c(71,56,78,67,58)
temperature # 71 56 78 67 58

names(temperature) <- c("Mon", "Tue", "Wed", "Thurs", "Fri")
temperature
#  Mon   Tue   Wed Thurs   Fri 
#    71    56    78    67    58 

# Naming the vector using variable
# --------------------------------
days <- c("Mon", "Tue", "Wed", "Thurs", "Fri", "Sat", "Sun")
temp <- c(71,56,78,67,58,79,80)
names(temp) <- days
temp
#  Mon   Tue   Wed Thurs   Fri   Sat   Sun 
#    71    56    78    67    58    79    80 

# Naming the vector using paste0 method
# -------------------------------------
price <- seq(100,220,20)
names(price) <- paste0('p',1:7)
price
# p1  p2  p3  p4  p5  p6  p7 
# 100 120 140 160 180 200 220 


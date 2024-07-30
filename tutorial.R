x <- 10
y <- 20
z <- x+y
print(z) 
z
class(z)
typeof(z)

my_string <- "mystring"
my_string

new_string <- 'newstring'
new_string

New_string <- "NEWSTRING"
New_string

var1 <- 'firstvariable'
var1

n <- 10L
typeof(n)
class(n)

x>y
x==y
x<y
x<=y
x>=y

print("EXPLICIT COERCION")
"*************"
m <- 0.6
class(m) # numeric
as.numeric(m) # 0.6
as.logical(m) # TRUE
as.character(m) # "0.6"

print("Character vector coercion")
l <- c("a", "b", "c")
class(l) # character
as.numeric(l) #NA NA NA (If the element is not coercable it returns NA for that element)
as.logical(l) # NA NA NA
as.character(l) # "a" "b" "c"

print("Number vector coercion")
k <- c(0,1,2,3)
class(k) # numeric
as.numeric(k) # 0 1 2 3 
as.logical(k) # FALSE TRUE TRUE TRUE
as.character(k) # "0" "1" "2" "3"

number_ = as.numeric(k)
number_ <- c(5,34,6,4,5,3,4,6,4,4,3,3,5,5,4,3,2,45,2456,265)

for(i in number_){
    if(i%%2==0){
        if(i==0){
            print("Zero neither odd nor even")
        }
        else{
            print(paste(i,'is an even number'))
        }
    }
    else{
        print(paste(i,"is an odd number"))
    }
}
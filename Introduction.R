# Basics of R

# 1 - Assignment Operators
B <- 5
X = 6


# 2 - Normal Printing
print("Hello Pinto")


# 3 - Shortcut to run = Ctrl + Enter


# 4 - Printing Values from 1 to 10
print (1:10)


# 5 - Help from R (use ? or help())
?mean
help(solve)


# 6 - Install new packages (install.packages("package-name"))
install.packages("ggplot2")


# 7 - Enabling the package that you installed (the tick on the left package window will be ticked for ggplot2 package)
library(ggplot2)


# 8 - Arithmetic Operators
5+5      #addition
12-3     #subtraction
4-6

A = 12
B = 7

Ans = A*B   
Ans    # highlight and run from line 37 to 41 to obtain the result.


2^2    #power (2 to the power 2)
2**3   #power (2 to the power 3)


9%%4   #modulus  (Remainder when 9 is divided by 4)

9%/%4  #quotient (When dividing 9 by 4, 4x2 = 8, so 2 is quotient)




# 9 - Logical Operators

A = 10
B = 2

A<B
A<=B
A>B
A>=B
A==B
A!=B
!(A>B)


var1 = A < B
var2 = A > B

isTRUE(A > B)



# 10 - Vectors (can only store same type of element. eg: numeric, Boolean, character, but not together)

vec1 = c(100, 25, 12, 1)
class(vec1)   #Numeric vector

vec2 = c("Ben", "Josh", "Lop")
class(vec2)   #Character Vector



# 11 - Lists (lists can store different types of elements)

data = list("Red", "Blue", c(23, 19, 7), TRUE, 15.4)
class(data)



# 12 - Matrix

z = matrix(c(1,2,3,4))  #notes the elements in the matrix

Z <- matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = FALSE)   #byrow = false, means fills the matrix column wise



# 13 - Factors (first create a vector)

vector1 = c ("Jan", "June", "April")
class(vector1)  #Character Vector

months = factor(vector1)
class(months)   #factor

levels(months)  #the categories without repetition

table(months)   #get values as a table



# 14 - Excel Sheet Fruit example (same concept as above)

vector2 = c(111,555,222,222,222,222,111,555,555)
vector3 = c(5,2,6,10,7,1,50,9,4)
vector4 = c(120,60,60,1000,50,58,89,89,40)

fruit = factor(vector2, c(111,222,555), c("Apple","Mango","Orange"))   #Renaming 111, 222, 555 to Apple, Mango and Orange respectively.
amount = factor(vector3)
price = factor(vector4)

levels(fruit)
levels(amount)
levels(price)

table(fruit)
table(amount)
table(price)




# 15 - Data Frame

ID = c('A01','A02','A03','A04')
Marks = c(100,99,98,75)
Gender = c("Male","Female","Female","Male")


#data_set is the name of the data frame
data_set = data.frame(ID,Marks,Gender)
data_set

# When creating a data frame
# 1) First create vectors
# 2) Create a data frame including the created vectors


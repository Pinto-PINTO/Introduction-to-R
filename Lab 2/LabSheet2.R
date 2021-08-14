# Lab Sheet 2

# While Loop
p = -1
while (p<10){
  print(p)
  p = p+1
}


# Print a range of values
2:100
for (x in 2:100){
  print(x)
}


# Importing and Exporting Files

# 1) Importing a file

# 1. Getting working directory
getwd()

# 2. Setting working directory
setwd("C://Users//R E V O//Pictures//Y2 S2//Probability & Statistics (PS) - CSIT2110//Practicals//Lab2")

# 3.
data_2 = read.csv("DATA 2.csv", header = TRUE) #If header = false, the row Dateof Birth, Gender, Race,.. will also be counted as a row 
data_2

# Display data in Tabular Format
fix(data_2)




# 2) Writing a file

# 1. Create data frame
Name = c("Kamal","Nimal","Saman")
Marks = c(85, 89, 90)

mark_info = data.frame(Name,Marks)


# 2. Writing the above into a .txt file
write.table(mark_info, file="PSMarks.txt")


# 3. Writing the above into a .csv file
write.table(mark_info, file="PSMarks.csv")




# Functions


# A function to add 2 numbers

func_1 = function(a,b){
  y = a + b
  print(y)
}

func_1(8,7)




# LabSheet 2 Exercises


# Question 1
x1 = (-b + sqrt((b^2)-4*a*c))/(2*a)

x2 = (-b - sqrt((b^2)-4*a*c))/(2*a)


quadRoot = function(a,b,c){
  x1 = (-b + sqrt((b^2)-4*a*c))/(2*a)
  print(x1)
  
  x2 = (-b - sqrt((b^2)-4*a*c))/(2*a)
  print(x2)
}

quadRoot(1,5,-2)



# Question 4
vec_1 = c(1:20)

vec_1 %%3 == 0  # Remainder when the value is divided by 3 should be exactly == 0

sum(vec_1 %%3 == 0)  # No of the divisible values



# Question 6
x = c(1,2,3,4,5)
max = 0

for (i in x){
  if(x[i] > max){
    max = x[i]
  }
}

print(max)



# Question 7
which.max(x) # there is an in-built function in R 



# Question 8

A = P * ((1 + (R/100))^i)
A = 0

MoneyOwed = function(P,R,n){
  
  for(i in 1:15){
    A = P * ((1 + (R/100))^i)
    print(A)
  }
}

MoneyOwed(5000,11.5,15)




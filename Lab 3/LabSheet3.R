# Labsheet 3


# Q1

getwd()
setwd("C://Users//R E V O//Pictures//Y2 S2//Probability & Statistics (PS) - CSIT2110//Practicals//Lab3")

data_3 = read.csv("DATA 3.csv", header = TRUE)
data_3

class(data_3)

fix(data_3)

# Renaming the columns (from x1 -> Age, x2 -> Gender, x3 -> Accomodation)
names(data_3) = c("Age", "Gender", "Accomodation")
fix(data_3)


#Change the gender (1 -> Male, 2 -> Female) using factors [Changing numerical variables into categorical]
data_3$Gender
data_3$Gender = factor(data_3$Gender,c(1,2), c("Male","Female"))
fix(data_3)


#Change the accomodation column ()
data_3$Accomodation
data_3$Accomodation = factor(data_3$Accomodation, c(1,2,3), c("Stays at Home","Boarded Students","Lodging"))
fix(data_3)




# Q2

attach(data_3)
Gender


# Creating frequency table for Gender column
gender_FreqTable = table(Gender)
gender_FreqTable


# Creating frequency table for Accomodation column
Acco_FreqTable = table(Accomodation)
Acco_FreqTable


# Creating a barchart
barplot(gender_FreqTable, main = "Barplot for Gender", xlab = "Gender", ylab = "Frequency")
abline(h=0)  # To add a horizontal line at 0
abline(h=1.5)  # To add a horizontal line at 1.5


barplot(Acco_FreqTable, main = "Barplot for Accomodation", xlab = "Accomodation", ylab = "Frequency")
abline(h=0)



# Creating a Pie Chart
pie(gender_FreqTable, main ="Pie Chart for Gender")

pie(Acco_FreqTable, main ="Pie Chart for Accomodation")



# Creating a Histogram
hist(Age, main="Histogram for Age")
abline(h=0)


# Creating a BoxPlot
boxplot(Age, main="Boxplot for Age", horizontal = TRUE)




# Q3

gender_Acco_FreqTable = table(Gender,Accomodation)
gender_Acco_FreqTable


# Display Stacked Bar Charts (A single bar is separated into 2 sections) (legends represent the row names)
barplot(gender_Acco_FreqTable, main = "Stack Bar Chart", xlab = "Accomodation", ylab = "Gender", legends = rownames(gender_Acco_FreqTable))
abline(h=0)

# Display Stacked Bar Charts (Separate Bars will be next to each other)
barplot(gender_Acco_FreqTable, beside = TRUE, main = "Stack Bar Chart", xlab = "Accomodation", ylab = "Gender", legends = rownames(gender_Acco_FreqTable))
abline(h=0)




# Q4

# Analyse qualitative and quantitative data side by side
boxplot(Age~Gender, main="Side by Side Boxplot", xlab="Age", ylab="Gender", horizontal = TRUE)

boxplot(Age~Accomodation, main="Side by Side Boxplot", xlab="Age", ylab="Accomodation", horizontal = TRUE)




# Q5

# Creating cross tables:

# Summation
xtabs(Age~Gender+Accomodation)

# Mean
xtabs(Age~Gender+Accomodation)/gender_Acco_FreqTable


















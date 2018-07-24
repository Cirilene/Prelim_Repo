data <- read.csv("C:/Users/RM A-225/Documents/Cirilene/Prelim_Repo/hw1_data.csv")
## Question 1
z <- 12
class(z)
## Question 2
z <- c(12,FALSE)
class(z)
## Question 3
m <- c(10,13,15,33)
n <- c(13,22,88,110)
rbind(m, n)
## Question 4
z <- list(22, "a", "c", FALSE)
z[[2]]
## Question 5
z <- 10:40
y <- 3
z + y
## Question 6
x <- c(117, 114, 14, 15, 113, 112, 110)
x[x >=100] <- 14 
print (x)
## Question 7
dim(data)
colnames(data)
## Question 8
rownames(data)
head (data,12)
## Question 9
dim(data)
nrow(data)
## Question 10
tail(data, 8)
## Question 11 What is the value of Wind in the 112th row? Temp in the 42th row? Solar.R in the 82th row?
data <- read.csv("C:/Users/RM A-225/Documents/Cirilene/Prelim_Repo/hw1_data.csv")
data [112,"Wind"]
data [112,]
data [42, "Temp"]
data [42,]
data [82, "Solar.R"]
data [82,]
## Question 12 
data <- read.csv("C:/Users/RM A-225/Documents/Cirilene/Prelim_Repo/hw1_data.csv")
data [, "Ozone"]
table(is.na(data))["TRUE"]
is.nan(data)
table(is.na(data [, "Ozone"])) 
table(is.nan(data [, "Ozone"]))["TRUE"]
table(is.na(data [, "Ozone"])) ["TRUE"] 
table(is.na(data [, "Solar.R"])) 
table(is.nan(data [, "Solar.R"])) ["TRUE"]
table(is.na(data [, "Wind"]))
table(is.nan(data [, "Wind"])) ["TRUE"]
table(is.na(data [, "Temp"])) 
## Question 13
str(data)
complete.cases(data)
x <- data [complete.cases(data), ]
str(x)
x <- na.omit(data)
print(x)
x <- na.omit(data[, "Ozone"])
print(x)
mean(x)
mean(na.omit(data[, "Wind"]))
mean(na.omit(data[, "Temp"]))
##Question 14 
data <- read.csv("C:/Users/RM A-225/Documents/Cirilene/Prelim_Repo/hw1_data.csv")
data.sub <- data[data$Ozone >26 , , drop =FALSE]
data.subTO <- data.subO [data.subO$Temp >80 , , drop =FALSE]
data.subTOO <- na.omit(data.subTO)
mean(data.subTOO$Solar.R)

## Question 15 
data <- read.csv("C:/Users/RM A-225/Documents/Cirilene/Prelim_Repo/hw1_data.csv")
data.June <- data [data$Month == 8, , drop = FALSE]
mean(data.June$Temp)
data.June <- data[data$Month == 6, , drop = FALSE]
mean(data.June$Temp)

## Question 16 
data.Month <- data[data$Month == 5, ,drop = FALSE]
data.MonthO <- na.omit (data.Month)
max(data.MonthO$Ozone)

x <- 100
x
x <- 1:36
print (x)
x <- c(2.3, "a")
y <- c(TRUE,2)
z <- c("a", TRUE)
as.numeric(x)
as.logical(x)
as.complex (x)
as.numeric(y)
as.logical(y)
as.complex (y)
as.numeric(z)
as.logical(z)
as.complex(z)
a <- 0:6
class(a)
as.numeric(a)
as.logical(a)
x <- list (1, "a" , TRUE, 1+4i)
x
m <- matrix (nrow = 4 , ncol = 5)
m
dim (m)
attributes(m)
m <- matrix (1:8 , nrow =4, ncol=2)
m
m <- 1:12
m
dim(m) <- c(2,6)
m
x <- 1:5
y <- 6:10
cdind (x,y)
cbind(x,y)
rbind(x,y)
x <- factor (c("yes" , "yes" , "no" , "yes" , "no"))
x
table (x)
x
unclass (x)
x <- factor (c("yes" , "yes" , "no" , "yes" , "no"))
              levels = c ("yes" , "no")
x
x <- c(1 , 2 , NA , 10 , 3 )
is.na(x)
is.nan(x)


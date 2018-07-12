x <- c( 1, 2, NA, 10, 3)
is.na(x)
is.nan(x)
x<- c(1, 2, NaN, NA, 4)
is.na(x)
is.nan(x)
##Data Frames
x<- data.frame(foo = 1:4, bar = c(T,T,F,F))
x
nrow(x)
ncol(x)
## Names
x<- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)
## Names (list)
x<- list(a=1, b=2, c=3)
x
## Names (matrices)
m <-matrix(1:4, nrow = 2, ncol = 2)
dimnames(m) <- list(c("a", "b"), c("c", "d"))
m
## dput-ting R objects
y <- data.frame(a=1, b="a")
dput(y)
dput(y, file = "y.R")
y<- 100
new(.y)
## dumping
x<- "foo"
y<- data.frame(a=1, b="a")
dump(c("x","y"), file= "data.R")
rm(x,y)
source("data.R")
y
x
## Subsetting
x<- c("a","b","c","c","d","a")
x[1]
x[2]
x[1:4]
x[x>"a"]
u <-x > "a"
u
x[u]
##Subsetting List
x<- list(foo = 1:4, bar = 0.6)
x[1]
x[[1]]
x$bar
x[["bar"]]
x["bar"]

x<- list(foo=1:4,bar = 0.6, baz="ciri")
x[c(1,3)]
name <- "foo"
x[[name]]
x$name
x$foo
# List in a list
x<- list(a=list(10,12,14), b= c(3.14,2.81))
x[[c(1,3)]]
x[[1]][[3]]
x[[c(2,1)]]
#Matrix
x<- matrix(1:6,2,3)
x[1,2]
x[2,1]
x[1,]
x[, 2]
##Subsetting a matrix
x<- matrix (1:6,2,3)
x[1,2]
x[1,2, drop = FALSE]
#Partial Matching
x<- list(aardvark = 1:5)
x$a
x[["a"]]
x[["a", exact = FALSE]]
##Removing NA Values
x <- c(1,2,NA,4,NA,5)
bad <- is.na(x)
x[!bad]
x<- c(1,2,NA,4,NA,5)
y<- c("a", "b",NA,"d",NA,"f")
good <- complete.cases(x,y)
good
x[good]
y[good]
##Vectorized Operation
x<- 1:4; y<- 6:9
x+y
x>2
x>=2
y == 8
x*y
x/y
##Vectorized Matrix Operation
x<- matrix(1:4, 2, 2); y <- matrix(rep(10, 4), 2,2)
x*y
x/y
x%*%y



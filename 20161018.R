x<-5
x
# 展示r語言圖形功能
demo(graphics)

#IRIS = 鳶尾花
data(iris)
plot(iris)
View(iris)

x<-c(1,2,3,4,5)#c = concatenate,整合、串聯之意
y<-c(5,10,15,20,25)
plot(x,y)

#台灣地圖
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="taiwan",zoom=8)
ggmap(map.taiwan)

#套件移除
remove.packages("ggmap")

#R練習
x <- 10
x
y <- x^2
y
z<- sqrt(y)
z

#mode(資料型態)與length(長度)
x<-10
x
mode(x)
length(x)
#numeric數值
y<-10.9
y
mode(y)
length(y)
#logical邏輯
z<-T  #T = Ture
z
mode(z)
length(z)
#character文字
a<-"Hello"
a
mode(a)
length(a)
#complex複數
b<-4+2i
b
mode(b)
length(b)

#向量vector
v <- c(10, 5, 3.1, 6.4, 9.2, 21.7)
v
length(v)
mode(v)

v<-c(10, 5, NA, 6.4, 9.2, 21.7)
v
v[2] #索引從1開始
v2<-1:10 #1~10
v2

#矩陣Matrix(二維)
x <- matrix(1:24 , nrow = 4 , ncol = 6,byrow = TRUE) #byrow按列表示
x
y <- matrix(1:24 , nrow = 4 , ncol = 6,byrow = FALSE)#byrow按行表示
y

#cbind()、rbind() and t()矩陣轉置
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3) #以行排序 cow
xc
xr <- rbind(x1,x2,x3) #以列排序
xr
xt <- t(xc) #轉矩陣
xt

nrow(xc) #回傳行數
ncol(xc) #回傳列數
xc
xc[,1]#逗號的後面是行
xc[2,]#逗號的前面是列

eigen(xc)

z <- xc * xr  #錯的
z <- xc %*% xr #對的
z

#Array陣列(多維)
x <- 1:24
dim(x) <- c(3,4,2)
x
x <- array(1:24 , dim = c(3,4,2))
x
x[2,3,1]
x[3,1,2]

x <- array(0,dim = c(3,4,2))
x

#Factor(因子) (比vector多了類別統計)
sex <- factor(c("男","女","男","男","女"))
sex

#Data Frame 資料框架
id <- c(1,2,3,4)
age <- c(25,30,35,40)
sex <- c("male","male","Female","Female")
pay <- c(30000,40000,45000,50000)
x_dataframe <- data.frame(id,age,sex,pay)
x_dataframe
x_dataframe[2]  #第二欄資料
x_dataframe$age
x_dataframe[2,] #第二筆資料
y <- edit(x_dataframe)   #修改值(edit)回傳給y
y

#list
id <- c(1,2,3)
sex <- c("male","male","female")
pay <- c(30000,40000,45000)
Y_dataframe <- data.frame(id,sex,pay)
gender <- factor("男","男","女")

Paul.Family <- list(name="Paul",wife="Iris",no.kids=3,
                    kid.age=c(25,28,30),gender,Y_dataframe)
Paul.Family

Paul.Family$kid.age
Paul.Family[4]
Paul.Family[4][2]  #錯誤的
Paul.Family[[4]]
Paul.Family[[4]][2] #必須多加一個[]

#第二章

setwd("c:/")
getwd()

X <- read.table("X.csv",sep = ",",header=TRUE)
X
str(X)

X <- read.table("X.csv",sep = ",",header=FALSE)
X
str(X)
head(X)

X <- read.table("X.txt",header=TRUE)
X

X <- read.table("X.txt",sep = " ",header=TRUE) #錯誤的寫法
X

X <- read.table("X.txt",sep = "\t",header=TRUE)
X

X <- scan("")
X
str(X)

my <- scan(file = "",what=list(name="",pay=integer(0),sex=""))
my
str(my)

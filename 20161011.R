x<-5
x
# �i��r�y���ϧΥ\��
demo(graphics)

#IRIS = �����
data(iris)
plot(iris)
View(iris)

x<-c(1,2,3,4,5)#c = concatenate,��X�B���p���N
y<-c(5,10,15,20,25)
plot(x,y)

#�x�W�a��
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="taiwan",zoom=8)
ggmap(map.taiwan)

#�M�󲾰�
remove.packages("ggmap")

#R�m��
x <- 10
x
y <- x^2
y
z<- sqrt(y)
z

#mode(��ƫ��A)�Plength(����)
x<-10
x
mode(x)
length(x)
#numeric�ƭ�
y<-10.9
y
mode(y)
length(y)
#logical�޿�
z<-T  #T = Ture
z
mode(z)
length(z)
#character��r
a<-"Hello"
a
mode(a)
length(a)
#complex�Ƽ�
b<-4+2i
b
mode(b)
length(b)

#�V�qvector
v <- c(10, 5, 3.1, 6.4, 9.2, 21.7)
v
length(v)
mode(v)

v<-c(10, 5, NA, 6.4, 9.2, 21.7)
v
v[2] #���ޱq1�}�l
v2<-1:10 #1~10
v2

#�x�}Matrix(�G��)
x <- matrix(1:24 , nrow = 4 , ncol = 6,byrow = TRUE) #byrow���C����
x
y <- matrix(1:24 , nrow = 4 , ncol = 6,byrow = FALSE)#byrow�������
y

#cbind()�Brbind() and t()�x�}��m
x1 <- c(1,2,3)
x2 <- c(4,5,6)
x3 <- c(7,8,9)
xc <- cbind(x1,x2,x3) #�H��Ƨ� cow
xc
xr <- rbind(x1,x2,x3) #�H�C�Ƨ�
xr
xt <- t(xc) #��x�}
xt

nrow(xc) #�^�Ǧ��
ncol(xc) #�^�ǦC��
xc
xc[,1]#�r�����᭱�O��
xc[2,]#�r�����e���O�C

eigen(xc)

z <- xc * xr  #����
z <- xc %*% xr #�諸
z

#Array�}�C(�h��)
x <- 1:24
dim(x) <- c(3,4,2)
x
x <- array(1:24 , dim = c(3,4,2))
x
x[2,3,1]
x[3,1,2]

x <- array(0,dim = c(3,4,2))
x

#Factor(�]�l) (��vector�h�F���O�έp)
sex <- factor(c("�k","�k","�k","�k","�k"))
sex

#Data Frame ��Ʈج[
id <- c(1,2,3,4)
age <- c(25,30,35,40)
sex <- c("male","male","Female","Female")
pay <- c(30000,40000,45000,50000)
x_dataframe <- data.frame(id,age,sex,pay)
x_dataframe
x_dataframe[2]  #�ĤG����
x_dataframe$age
x_dataframe[2,] #�ĤG�����
y <- edit(x_dataframe)   #�ק��(edit)�^�ǵ�y
y





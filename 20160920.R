x<-5
x
demo(graphics)# �i��r�y���ϧΥ\��

data(iris)#IRIS = �����
plot(iris)

x<-c(1,2,3,4,5)#c = concatenate,��X�B���p���N
y<-c(5,10,15,20,25)
plot(x,y)

install.packages("ggmap")#�x�W�a��
library(ggmap)
map.taiwan <- get_map(location="taiwan",zoom=8)
ggmap(map.taiwan)
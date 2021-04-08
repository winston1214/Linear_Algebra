# sin, cos, tan

x<-seq(-2*pi,2*pi,0.1)
ysin<-sin(x)
ycos<-cos(x)
ytan<-tan(x)
plot(x,ysin,type='l',ylab='y',ylim=c(-2,2))
lines(x,ycos,type='l',col='red')
lines(x,ytan,type='l',col='green')

# 5번
x<-seq(0,5,by=0.1)
y<-1/4*x*exp(-x^2)
plot(x,y,type='l')

#8번
data(mtcars)
install.packages('rgl')
library(rgl)
plot3d(mtcars$mpg,mtcars$hp,mtcars$drat)
text3d(mtcars$mpg,mtcars$hp,mtcars$drat,texts=rownames(mtcars),col='red',adj=1)

# 10번
x1<-seq(-10,10,b=0.5)
x2<-seq(-10,10,b=0.5)
mu1<-1; mu2<-2; s1<-1; s2<- 4; r<-0.5;
func<-function(x1,x2){
  pro1 <- 1/(2*pi*sqrt(s1*s2)*(1-r^2))
  pro2 <- ((x1-mu1)/sqrt(s1))^2
  pro3<- (2*r*(x1-mu1)*(x2-mu2))/sqrt(s1*s2)
  pro4 <-((x2-mu2)/sqrt(s2))^2
  pro5 <- (pro2-pro3+pro4)
  pro6<- pro1*exp(-pro5/(2*(1-r^2)))
}
y<-outer(x1,x2,FUN=func)
persp(x1,x2,y)
contour(x1,x2,y)

#11번
score<-read.csv('C:/Users/winst/Desktop/data.csv',header = T)
freq<-table(score[,4])
freq
(prob<-prop.table(freq)) # 상대도수
(sum_prob<-cumsum(prob)) # 누적도수
(total <- cbind(freq,prob,sum_prob)) 
barplot(freq,prob,sum_prob)
pie(freq)

stem(score[,5],scale=2)
hist(score[,5])

x<-score[,5];y<-score[,7]
min(x)
max(x)
mean(x)
var(x)
median(x)
min(y)
max(y)
mean(y)
var(y)
median(y)

hist(score[,5],probability = T)
lines(density(score[,5]))

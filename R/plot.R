x<-seq(-10,10,by=1)
y<-x^2
plot(x,y)

x<-seq(-10,10,by=1)
y<-x^2+4*x+4
plot(x,y)

x<-seq(0,5,by=0.1)
y<-log(x)
plot(x,y)

x<-seq(1,1000,b=1)
y<-sqrt(x)
plot(x,y,type='l',col='blue')

x<-seq(0,5,by=0.1)
y<-log(x)
par(mfrow=c(2,2))
plot(x,y,type='p',main='Log Graph',sub='type=p')
plot(x,y,type='l',main='Log Graph',sub='type=l')
plot(x,y,type='o',main='Log Graph',sub='type=o')
plot(x,y,type='s',main='Log Graph',sub='type=s')

x<-c(0,4,6,7,4,3,5,7)
y<-c(0,7,8,7,6,3,2,5)
par(mfrow=c(1,1))
plot(x,y)
abline(a=2,b=0.5) # a = y 절편, b=기울기
abline(h=4) # 수평선
abline(v=5) # 수직선

lm.obj<-lm(y~x) # 단순 회귀분석
plot(x,y)
abline(lm.obj) # 단순 회귀선 추가

x<-c(68,67,66,64,69,68,72,65,71,67,69,70)
y<-c(65,63,66,64,67,62,70,66,68,67,69,71)
plot(x,y)
lm.result<-lm(y~x)
abline(lm.result)

ppm<-c(0.066,0.088,0.12,0.05,0.162,0.186,0.057,0.1)
ugm<-c(4.6,11.6,9.5,6.3,13.8,15.4,2.5,11.8)
plot(ppm,ugm)
abline(h=8,col='red')
abline(v=0.12,col='red')
lm.line<-lm(ugm~ppm)
abline(lm.line)
plot(x,y,type='s',bty='n',main='cosine graph',sub='type=s')

x<-seq(-4,4,by=0.1)
plot(x,exp(-x^2/2)/sqrt(2*pi),ylab = expression(1/sqrt(2*pi)*e^(-x^2/2)),type='l')

data(iris)
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)

library(lattice)
cloud(iris$Petal.Length~iris$Sepal.Length+iris$Sepal.Width)

x1<-seq(-2,2,by=0.1)
x2<-seq(-5,5,by=0.1)
func<-function(x1,x2){
  answer = (x1+x2)^2
  return(answer)
} 
y<-outer(x1,x2,FUN=func)
persp(x1,x2,y)

x1<-seq(-10,10,by=0.5)
x2<-seq(-10,10,by=0.5)
mu1<-0;s1<-5;r=0.8
mu2<-0;s2<-10;s12=7
func<-function(x1,x2){
  pro1<-1/(2*pi*sqrt(s1*s2)*(1-r^2))
  pro2<-((x1-mu1)/sqrt(s1))^2
  pro3<-(2*r*(x1-mu1)*(x2-mu2))/(sqrt(s1*s2))
  pro4<-((x2-mu2)/sqrt(s2)^2)
  pro5<-(pro2-pro3+pro4)
  pro6<-pro1*exp(-pro5/(2*(1-r^2)))
  return(pro6)
}
y<-outer(x1,x2,FUN=func)
persp(x1,x2,y)

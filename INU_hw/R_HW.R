# 연습문제2
# 5번
x<-c(seq(1,100))
x[x>=70]

# 6번
income<-c(45,23,55,34,53,66,76,86,88)
income[4] # 4번째 값
income[1:3] # 첫번째부터 3번째 값
income[-c(1,5,6)] # 1,5,6 번째 값을 제외한 나머지
income[income<=50] # income이 50이하인 값만 추출

# 9번
A <- matrix(c(2,-1,0,2,1,3),byrow=TRUE,nrow=2)
B <- matrix(c(2,3,1,1,2,3),byrow=T,nrow=2)
C <- matrix(c(1,-1,2,1),byrow=T,nrow=2)
(A+B)
C %*% B

# 14번
data<-read.table('D:/Linear_Algebra/INU_hw/R_HW_data/data.txt',header=T) # 메모장 ansi로 저장
data$edu # edu의 값
data[5,] # 5행
nrow(data) # 표본 개수
ncol(data) # 변수 개수

female <- data[data$Sex=='여',] # 여자만 선택해서 female 데이터 프레임 만들기
people<-data[data$age<40,]

# 16번
x<-matrix(c(11,42,55,2,1,6),nrow=2,byrow=TRUE)
y<-matrix(c(1,4,5,6,7,6),nrow=2,byrow=TRUE)
cbind(x,y)

# 예제 3.7
ppm<-c(0.066,0.088,0.12,0.05,0.162,0.186,0.057,0.1) # 오존 농도 데이터
ugm<-c(4.6,11.6,9.5,6.3,13.8,15.4,2.5,11.8) # 제 2탄소농도 데이터
plot(ppm,ugm) # 그래프 그리기
abline(h=8,col='red') # 수평선
abline(v=0.12,col='red') # 수직선
lm.line<-lm(ugm~ppm) # 회귀분석
abline(lm.line) # 회귀선
plot(ppm,ugm,type='s',bty='n',main='cosine graph',sub='type=s') # 계단형타입

# 연습문제3
# 3번
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
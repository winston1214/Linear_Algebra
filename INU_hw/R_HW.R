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
x<-seq(-2*pi,2*pi,0.001*pi)
plot(x,cos(x),type='l',ylab='',ylim=c(-1,1))
par(new=TRUE)
plot(x,sin(x),col='red',type='l',ylab='',ylim=c(-1,1))
par(new=TRUE)
plot(x,tan(x),col='blue',ylab='',ylim=c(-1,1))
legend('bottomleft', c("Sin", 'Cos','tan'), fill = c("black", "red", "blue"))


# 5번
library(ggplot2)
# (1) 지수분포 그래프 (Exponential distribution plot) : fun=dexp
ggplot(data.frame(x=c(0,10)), aes(x=x)) +stat_function(fun=dexp, args=list(rate=1), colour="brown", size=1.5)
+ggtitle("Exponential Distribution")





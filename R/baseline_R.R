stat <- c(87,85,86,96,78,83,89,95,92,68)
sum(stat) # 총합
mean(stat) # 평균
max(stat) # 최대값
min(stat) # 최소값
range(stat) # 범위
var(stat) # 분산
sd(stat) # 표준편차


x<-seq(1,10) # x<-1:10

seq(from=1,to=10,by=2)
seq(1,10,2)
seq(5,30,b=3)

rep(1,5)
rep(seq(-3,3,by=2),3)
rep(c(2,5,8),4)
rep(0,7)

rev(1:10) # 10:1

x<-c(50,58,65,70,72,77,80,84,91,94,100,101)
x[1] # first! not 0
x[1:3] # 1<=x<=3
x[c(6,7,9)]

names(x) <- seq(1,12) # create names
x1 <- x[-1] # delete first value
x1
x2<-x[-c(2,5,6)]
x2
x3 <- x[x<=77] # 조건문
x3
x4 <- x[x>80]
x4
x5 <- x[x!=77]
x5

# matrix
# column 기준으로 데이터 생성
x<-1:16
matrix(x,nrow=4,byrow=TRUE)
matrix(x,nrow=4)

A <- c(100,150,120)
B<-c(9,080,66)
total <- matrix(c(A,B),nrow=2,byrow=TRUE)
dimnames(total)[[1]]<-c("A회사","B회사")
dimnames(total)[[2]]<-c("1분기",'2분기','3분기')
total

a <- c(5,6,7)
b <- c(1,2,3)
c <- c(4,5,6)
rbind(a,b,c) # 행 별로 결합
cbind(a,b,c) # 열 별로 결합
total <- cbind(total,c(110,88))
dimnames(total)[[2]][4] <- c("4분기")
total

total <- rbind(total,c(110,90,88,100))
dimnames(total)[[1]][3] <-c('C회사')
total

t_total<-t(total) # transpose
t_total

x <- matrix(1:4,nrow=2,byrow=TRUE)
y <- matrix(1:4,nrow=2,byrow=TRUE)
x*y # 숫자끼리 곱셉
x %*% y # 행렬곱
x %*% t(y) 

names1<-c("인천","대학교")
names2 <- c("빅데이터",'학과')
name <- c(names1,names2)
name

data<-c("Top",'Mid','Bottom')
data
rep(data,c(4,1,2)) # 문자열 각각 4번,1번,2번 반복

x<-seq(10,50,by=10)
y<-seq(1,5,by=1)
x+y
t(x) %*% y
x %*%t(y)
x*y
x*x
vec <-c(x,y)
vec
(mat2 <- cbind(x,y))
(mat3<-rbind(x,y))
mat3*mat3
t(mat3)
(mat4 <- mat2 %*% t(mat2))
dim(mat4)

library(MASS) # 역행렬 구하기위한 라이브러리
(mat <- matrix(c(1,2,3,3,2,1,0,-1,3),nrow=3))
(inv <- ginv(mat)) # 역행렬
(inv <- solve(mat)) # 역행렬

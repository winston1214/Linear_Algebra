data <- seq(1,16)
mat <- matrix(data,nrow=4,byrow=TRUE)
mat
apply(mat,1,FUN=sum) # 행기준 합
apply(mat,2,FUN=sum) # 열기준 합
apply(mat,1,FUN=mean) # 행기준 avg
apply(mat,2,FUN=mean) # 열기준 avg
apply(mat,1,FUN=max)
apply(mat,2,FUN=max)

x<-runif(1,min=0,max=1) # 균일분포 난수생성(0~1)
if(x>0.5) y<-TRUE
x
y

x<-runif(1,min=0,max=1) # 균일분포 난수생성(0~1)
if(x>0.5) y<-TRUE else y<-FALSE
x
y

if(x>0.5) y=x else y=-x
x
y

total <- 0
for (i in 1:10){
  total<-total+i
}
total

total <- 1
for (i in 1:10){
  total<-total*i
}
total

x<-rep(0,7)
for (i in 1:length(x)){
  x[i]<-i
}
x

total <- 0
x<-c(6,7,8,9)
for (i in x){
  total <- total+i
}
total

# 1,2,3,4 print
for (i in 1:4) print(i)
# 100~200 sum
total = 0
for (i in 100:200) total<-total+i
total

square<-function(x){ # 함수 정의
  x*4
}
square(5)

square2<-function(x){
  answer<-x*4
  return(answer)
}
square2(5)

my_median<-function(x){
  n<-length(x)
  if (n%%2==1) y=x[(n+1)/2] # 홀수개
  else y=(x[n/2]+x[n/2+1])/2 # 짝수개
  return(y)
}

x <-c(1,2,3,NA,5,6,7,NA,9,10)
is.na(x) # 결측치 여부
sum(is.na(x)) # 결측치 개수

x[x>8] # 모든 NA 값 포함
sum(x)
var(x)
sum(x,na.rm=TRUE) # na 제거하고 계산
var(x,na.rm=TRUE)

x2<-na.omit(x) # na 제거
x2[x2>8]

rank(x) # 순위 부여 결측값은 마지막 순위 부여
r<-rank(x)
r

r<-rank(x,na.last=FALSE) # 결측값 우선순위 부여
r
x<-c(1,NA,3,NA,5)
mean(x)
mean(x,na.rm=TRUE)
table(x)
sort(x)

x<-scan("D:/Linear_Algebra/R/data.txt") # read data
x
y<-matrix(x,ncol=4,byrow=TRUE)
y
write.table('D:/Linear_Algebra/R/data2.txt',row.names=FALSE,col.names=FALSE) # data write
total

a<-c(1,2,3,4)
b<-c("Mon",'Tues','Wedn','Thur')
c<-c(10,11,12,13)
data<-data.frame(a,b,c) # create dataframe
data

data$a # a열 불러오기
data$b
data[1,] # 1행
data[,2] # 2열
data[1,2] # 1행 2열열

str(data) # structure
head(data)

data<-read.table('D:/Linear_Algebra/R/data_table.txt',header=T)
data

str(data)

data$Sex
data[,2] # sex
data[data$Sex==1]
data[data$Sex==1,c(1,3)]

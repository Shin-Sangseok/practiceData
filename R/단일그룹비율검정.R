##빈도수의 차이를 검정하고 싶을 때 
##빈도수를 나타내는 표 : 교차검정표 

getwd()
setwd('')

one_sample <- read.csv("C:/Users/pc/r-workspace/rproject3/r-csv/csv/one_sample.csv")
View(one_sample)
print(one_sample)
head(one_sample)
tail(one_sample)
summary(one_sample)
length(one_sample) ##컬럼 수 , variables 
length(one_sample$no) ##행수 
table(one_sample$survey)

#0  1
#14 136 



table(one_sample$survey, useNA = 'ifany')
library(prettyR)

freq(one_sample$survey)

#이항분포를 가지는 베루누이 시행 결과인 
#교차분석표를 table(), freq()함수로 구함 
#이항분포는 명목척도(질적데이터)
help("binom.test")
binom.test(c(136,14), p = 0.8, alternative = 'greater', conf.level = 0.95)
#95%확신이 있으면 되겠다. 
# data:  c(136, 14)
# number of successes = 136, 
# number of trials = 150, p-value = 0.0003179 
# alternative hypothesis: true probability of success is greater than 0.8
# 95 percent confidence interval:
#   0.8579426 1.0000000 85~100점 정도 있으면 됌. 
# sample estimates:
#   probability of success 
# 0.9066667 
# 

#p-value는 영가설이 나타날 확률(0.0003179)이 0.05보다 작을 
#확률이므로, 내가 주장한 80%이상의 만족도가 나타날 확률이 
#95%이상 된다라는 것임. 
#85~100만족도가 나오면 내가 맞다라는 결론 
#=> 만족도가 80%이상 나왔으므로 , 작년보다 만족도가 높고, 불만족도가 낮아졌다라고 할 수 있다 

hdtv <- read.csv("C:/Users/pc/r-workspace/rproject3/r-csv/csv/hdtv.csv")
View(hdtv)
freq(hdtv$buy)

#전체 주석 Ctrl +shift +c
# Frequencies for hdtv$buy 
# 1    2   NA
# 40   10    0
# %      80   20    0 
# %!NA   80   20 

##구매 빈도: 10, 구매하지 않은 빈도: 40 
##c()

##기존 구매율이 15% 
##우리의 판매정보의 데이터가 기존 구매율 15%와 차이가 있는지?
##우리의 판매정보의 데이터가 기존 구매율 15%보다 큰건지? 


summary(hdtv)
length(hdtv)
length(hdtv$user.id)
length(hdtv$buy)

binom.test(c(10,40) , p= 0.15) #15%의 구매율이다. 대립가설 
#15%의 구매율이다. 대립가설 
#기존 구매율과 현재 구매율이 15%로 동일 
#p-value가 0.05보다 아래로 나와야 함.
#p-value가 0.05보다 크게 나오면 영가설이 채택 

# data:  c(10, 40)
# number of successes = 10, number of
# trials = 50, p-value = 0.321  
# alternative hypothesis: true probability of success is not equal to 0.15
# 95 percent confidence interval:
#   0.1003022 0.3371831
# sample estimates:
#   probability of success 
# 0.2 
#=>p-value가 0.05보다 크므로 대립가설은 기각, 영가설이 채택이 됩니다. 
#기존 구매율이 15%와 다르다. (크거나 작다)

#p의 퍼센테이지는 c(, 에서 앞부분을 의미)

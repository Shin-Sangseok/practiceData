two_sample <- read.csv("C:/Users/pc/r-workspace/rproject3/r-csv/csv/two_sample.csv")
View(two_sample)
print(two_sample)

length(two_sample$gender)
length(two_sample$method)
length(two_sample$survey)
length(two_sample$score)

print(two_sample$score)
table(two_sample$gender)
table(two_sample$method)
table(two_sample$survey)

#0   1 
#55  245  -- 만족 245 

install.packages("freq")

freq(two_sample$gender)
freq(two_sample$method)
freq(two_sample$survey)
freq(two_sample$score)

##그룹별 빈도분석표를 그려보자 
table(two_sample$method, two_sample$survey, useNA = 'ifany')

#어느 그룹이 만족도가 높았는가?
prop.test(c(110,135),c(150,150), alternative = 'greater', conf.level = 0.95)

# data:  c(110, 135) out of c(150, 150)
# X-squared = 12.824, df = 1, p-value = 0.9998
# alternative hypothesis: greater
# 95 percent confidence interval:
#   -0.2451007  1.0000000
# sample estimates:
#   prop 1    prop 2 
# 0.7333333 0.9000000 
#=>연구가설 : pt교육이 코딩교육보다 만족도가 높다 
#=>귀무가설 : pt교육이 코딩교육보다 만족도가 낮거나 같다. 
#=>p-value가 0.9이므로 연구가설 기각, 귀무가설 채택 
#=>pt교육이 코딩교육보다 만족도가 낮거나 같다 

prop.test(c(110,135),c(150,150), alternative = 'less', conf.level = 0.95)

# data:  c(110, 135) out of c(150, 150)
# X-squared = 12.824, df = 1, p-value = 0.0001711
# alternative hypothesis: less
# 95 percent confidence interval:
#   -1.00000000 -0.08823265
# sample estimates:
#   prop 1    prop 2 
# 0.7333333 0.9000000 
#=>연구가설: pt교육이 코딩교육보다 만족도가 적다 
#=>대립가설: pt교육이 코딩교육보다 만족도가 높거나 같다 
#p-value가 0.0001이므로 연구가설 채택 
#=>pt교육이 코딩교육보다 만족도가 적다 


#모수검정(정규성과 관련있는 데이터)
#평균과 일치하는지, 혹은 두 모집단의 차이가 있는지를 검증하는 방법
#두 집단이상의 비교에서는 정규분포가 되어야하고 분산이 같아야 하는 전제조건이 따른다 

#비모수검정(정규성을 따르지 않는 데이터)
#중앙값을 사용하여 각 data의 위치를 활용하여 모집단의 속성을 확인

#정규분포(모수검정)-t.test()
#비정규분포(비모수검정)->wilcox.test() 


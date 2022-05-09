two_sample <- read.csv("C:/Users/pc/r-workspace/rproject3/r-csv/csv/two_sample.csv")

View(two_sample)

result <- subset(two_sample,!is.na(score) )
result 

length(result$score)

a <- subset(result, method ==1)
b <- subset(result, method ==2)

a.score <- a$score 
b.score <- b$score 

print(b.score)
length(a.score) #[1] 109
length(b.score) #[1] 118 

## 독립적인 a, b집단의 동질성을 비교 
var.test(a.score, b.score)

# F = 1.2158, num df = 108, denom df = 117,
# p-value = 0.3002
# alternative hypothesis: true ratio of variances is not equal to 1
# 95 percent confidence interval:
#   0.8394729 1.7656728
# sample estimates:
#   ratio of variances 
# 1.215768 
#=>정규분포를 따른다. (t-test 사용)

t.test(a.score, b.score, alternative = 'two.side', conf.level = 0.95)

# Welch Two Sample t-test
# 
# data:  a.score and b.score
# t = -2.0547, df = 218.19, p-value = 0.0411 [p값이 0.05아래로 나옴]
# alternative hypothesis: true difference in means is not equal to 0
# 95 percent confidence interval:
#   -0.48296687 -0.01005133
# sample estimates:
#   mean of x mean of y 
# 5.556881  5.803390 
#=>대립가설 채택, 차이가 있다. 

t.test(a.score, b.score, alternative = 'greater', conf.level = 0.95)


# Welch Two Sample t-test

# data:  a.score and b.score
# t = -2.0547, df = 218.19, p-value = 0.9794
# alternative hypothesis: true difference in means is greater than 0
# 95 percent confidence interval:
#   -0.4446915        Inf
# sample estimates:
#   mean of x mean of y 
# 5.556881  5.803390 
#=>영가설 채택, a가 b보다 크지 않다. a가 b보다 작다 





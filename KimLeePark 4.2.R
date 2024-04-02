# 참고자료 : 2023년도 수도권 미혼인구 분석

people <- matrix(c(773, 766, 
                   759, 644,
                   1003, 961,
                   826, 685,
                   978, 920,
                   759, 659,
                   923, 892,
                   768, 715,
                   1078, 1049,
                   974, 925,
                   1048, 1041,
                   998, 960), ncol = 2, byrow=T)
area <- c("capital", "noncapital","capital", "noncapital","capital", "noncapital","capital", "noncapital","capital", "noncapital","capital", "noncapital")
people <- data.frame(people, area)
colnames(people) = c('men', 'women', 'local')
rownames(people) = c('20-24', ' ', '25-29', '  ', '30-34', '   ', '35-39', '    ', '40-44', '     ', '45-49', '         ')

# 연령대 별 수도권, 비수도권 남여 미혼 가구 수
people
# 미혼 가구 수 요약본 출력
str(people)

  
#1. 연령대 별 수도권, 비수도권 남여 미혼 가구 수의 합계를 구하고 데이터 프레임에 추가하시오.
total <- c(rowSums(people[,-3]))
people <- data.frame(people, total)
colnames(people) = c('men', 'women', 'local', 'total')
people

#2. 연령대 별 미혼 가구 수 합계가 총 합계 구성비를 데이터 프레임에 추가하시오. 
percent <-c( round(people["total"] / sum(people[,4]) * 100, digits = 2 ))
people <- transform(people, percent = percent )
colnames(people) = c('men', 'women', 'local', 'total', 'percent')
people

#3. 수도권 미혼 가구의 합계와 비수도권 미혼 가구의 합계를 구하시오.
CapitalTotal <- subset(people, local == "capital")
CapitalTotal
sum(CapitalTotal[,4])

NoncapitalTotal <- subset(people, local == "noncapital")
NoncapitalTotal
sum(NoncapitalTotal[,4])

#4. 수도권, 비수도권 구별없이 연령대 별 남여 미혼 가구 수를 새로운 매트릭스로 출력하시오.
PeopleYear1 <- people[1,-3] + people[2,-3]
PeopleYear2 <- people[3,-3] + people[4,-3]
PeopleYear3 <- people[5,-3] + people[6,-3]
PeopleYear4 <- people[7,-3] + people[8,-3]
PeopleYear5 <- people[9,-3] + people[10,-3]
PeopleYear6 <- people[11,-3] + people[12,-3]
PeopleYear <- matrix(c(PeopleYear1, PeopleYear2, PeopleYear3, PeopleYear4, PeopleYear5, PeopleYear6), nrow = 6, ncol = 4, byrow = T)
rownames(PeopleYear) = c('20-24', '25-29', '30-34', '35-39', '40-44', '45-49')
colnames(PeopleYear) = c('men', 'women', 'local', 'percent')
PeopleYear



#임의로 경로 지정
setwd("C:/Users/SANGMYUNG/Downloads/KimLeePark 4.16")
Restplace <- read.csv('RestPlace.csv', fileEncoding = "CP949", encoding = "UTF-8")

str(Restplace)

#통계분류1 별 이용한 값의 평균을 구하는 함수
temp <- function(name)
{
  Restplace.type <- subset(Restplace, 통계분류.1. == name) #통계분류.1.에서 name에 해당하는 값을 저장
  return(mean(Restplace.type$이용함)) #해당 값의 평균을 구해 반환
}

temp("연령별") #통계분류 1 중 '연령별'에 해당하는 이용값의 평균
temp("가구소득별")
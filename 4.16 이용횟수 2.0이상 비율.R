library(svDialogs)
getwd()
setwd("C:\\Rworks")
Restplace <- read.csv('RestPlace.csv', fileEncoding = "CP949", encoding = "UTF-8")
Restplace

#표본 분류 중 이용횟수가 2.0이상인 집단의 비율(1행 제외)
total <- sum(Restplace[Restplace$통계분류.1. != "전체" & Restplace$통계분류.2. != "소계", "표본수"])
usage <- 0
for (i in 1:nrow(Restplace)) {
  if (Restplace[i, "이용횟수"] >= 2.0) {
    usage <- usage + Restplace[i, "표본수"]
  }
}
result <- (usage / total) * 100
result
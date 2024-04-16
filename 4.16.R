library(svDialogs)

setwd("C:\\Rworks")
restPlace <-read.csv('restPlace.csv', fileEncoding = "CP949", encoding = "UTF-8")

region.num <- restPlace[c(47:63),c(6)]
region.num <-as.numeric(region.num)
region.num
names(region.num) <- c('서울','부산','대구','인천','광주','대전',
                       '울산','세종','경기','강원','충북','충남',
                       '전북','전남','경북','경남','제주')
often.region <- c()
for(i in 1:17){
  if(region.num[i] >= 2){
      often.region <- append(often.region, region.num[i])
  }
}
names(often.region)
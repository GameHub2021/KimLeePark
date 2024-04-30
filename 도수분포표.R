setwd('C:/Users/SANGMYUNG/Downloads/a') #임시로 경로 지정
murder <- read.csv("murder.csv", fileEncoding = "CP949", encoding = "UTF-8")


#합계를 제외한 도수분포

tmp <- murder[2:10,3:9] #총기~무기없음, 1인~10인이하
rownames(tmp) <- murder[2:10, 1] #이름 지정
tmp



#한명을 죽이는데 사용한 무기 개수의 상대도수

one <- prop.table(tmp$X1인) #tmp 중 1인에 해당하는 요소의 상대도수
names(one) <- murder[2:10, 1] #이름 지정
one
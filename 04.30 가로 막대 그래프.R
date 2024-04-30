setwd("C:\\Rworks")
murder <- read.csv(file = "murder.csv", fileEncoding = "CP949", encoding = "UTF-8")
murder_data <- murder[2:10, 3:9]
murder_data
par(mfrow=c(1, 1), mar=c(5, 5, 5, 7)) 
barplot(as.matrix(murder_data),
        main = '살인범죄의 조별과 공용물',
        col = rainbow(9), 
        horiz = T, beside=T, legend.text=c("총기", "도검"," 도끼","낫","독극물","줄(끈)","돌","기타","무기 없음"), las=1,
        args.legend = list(x='topright', bty='n',inset=c(-0.25,0)),
        xlab = "수치 (단위: 건)", ylab="조별", width=2.5)

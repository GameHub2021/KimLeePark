setwd("C:\\Rworks")
murder <- read.csv('murder.csv', fileEncoding = "CP949", encoding = "UTF-8")



barplot(t(murder[, -(1:2)]), beside = FALSE, col = rainbow(7),
       names.arg = murder$공용물별, main = "살인범죄의 조별과 공용물",
       xlab = "살인 도구", ylab = "범죄 건수",
       legend.text = c("1인","2인","3인","4인","5인","6인","10인이하"),
       ylim = c(0,200))

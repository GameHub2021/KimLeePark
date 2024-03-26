# 참고자료 : 2022년도 어류양식동향조사 결과
fish <- list(jopibolrok = c(244, 256, 4, 63, 5, 1),
             neopchi = c(33, 178, 235, 0, 18, 9),
             sungeo = c(78, 31, 0, 24, 0, 19),
             chamdom = c(238, 147, 1, 2, 2, 0),
             gajami = c(4, 9, 47, 0, 43, 9),
             other = c(508, 308, 43, 13, 19, 17),
             price = c(12000, 12000, 12000, 15000, 13000, 14000),
             type = c('jopibolrok', 'neopchi', 'sungeo', 'chamdom', 'gajami', 'other'))

fish$type <- factor(fish$type)
names(fish$price) <- fish$type

sale.jopibolrok <- fish$price['jopibolrok'] * fish$jopibolrok
sale.neopchi <- fish$price['neopchi'] * fish$neopchi
sale.sungeo <- fish$price['sungeo'] * fish$sungeo
sale.chamdom <- fish$price['chamdom'] * fish$chamdom
sale.gajami <- fish$price['gajami'] * fish$gajami
sale.other <- fish$price['other'] * fish$other

sale.shop <- sale.jopibolrok + sale.neopchi + sale.sungeo + sale.chamdom + sale.gajami + sale.other

names(sale.shop) <- c('Gyeongnam', 'Jeonam', 'Jeju', 'Chungnam', 'Gyengbok', 'Other')

# 각 지역별 어류생산 매출액 통계
sale.shop

#1. 각 지역별 생선 매출을 오름차순으로 정렬하시오.
sort(sale.shop)

#2. 각 지역별 최대 매출 지역과 최소 매출을 낸 지역 간의 격차를 산출하시오.
gap <- max(sale.shop) - min(sale.shop)
gap

#3. 대한민국 지역 평균 이상의 매출을 낸 지역과 매출액을 산출하시오.
mean(sale.shop)
sale.shop[sale.shop > mean(sale.shop)]

#4. 각 생선별 최고 양식량을 기록한 지역을 산출하시오.
country <- c('Gyeongnam', 'Jeonam', 'Jeju', 'Chungnam', 'Gyengbok', 'Other')
country.new <- factor(country)

names(fish$jopibolrok) <- country.new
names(fish$neopchi) <- country.new
names(fish$sungeo) <- country.new
names(fish$chamdom) <- country.new
names(fish$gajami) <- country.new
names(fish$other) <- country.new

max.jopibolrok <- fish$jopibolrok[max(fish$jopibolrok) == fish$jopibolrok]
max.neopchi <- fish$neopchi[max(fish$neopchi) == fish$neopchi]
max.sungeo <- fish$sungeo[max(fish$sungeo) == fish$sungeo]
max.chamdom <- fish$chamdom[max(fish$chamdom) == fish$chamdom]
max.gajami <- fish$gajami[max(fish$gajami) == fish$gajami]
max.other <- fish$other[max(fish$other) == fish$other]

Max <-c(max.jopibolrok, max.neopchi, max.sungeo, max.chamdom, max.gajami, max.other)
Max

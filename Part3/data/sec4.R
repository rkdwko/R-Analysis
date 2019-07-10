print(5 / 2)
print(5 %/% 2)    # 나눗셈의 몫
print(5 %% 2)     # 나눗셈의 나머지
print(5 ^ 2)
print(5 * 5)

1+2*3
(1+2)*3

10000
100000          # 십만부터 10의 승수로 표현
100000 + 100000
1 / 1000000
1 / 10000       # 만분의 1부터 10의 -승수로 표현
1 / 1000

'1' + '2'
as.numeric('1') + as.numeric('2')   # 문자열을 정수로 바꾸어 줌

'first'
"first"        # 문자열 작은 따옴표나 큰따옴표로 감싸야 출력 가능
first
first <- 1     # first에 값 1을 넣으면 fitst 입력시 1이 출력됨
first

class(1)       # 값이 어떤 형식(문자열, 숫자, 논리)인지 확인
class("1")
class(!0)

3 & 0
3 & 4
3 | 0
!0
!3
|2

cat(1, NA, 2)        # NA는 그대로 출력됨 (연산에 포함됨)
cat(1, NULL, 2)     # NULL은 출력되지 않음(연산 불포함)
sum(1, NA, 2)         # NA : 잘못된 값이 들어올 경우(Not Available, Not Applicable)
sum(1, NULL, 2)       # NULL : 값이 없을 경우

class(NA)
class(NULL)

setwd("d:/Workspace/R_Data_Analysis/Part3/data")
txt1 <- read.csv("factor_test.csv")
txt1

factor1 <- factor(txt1$blood)
factor1
gender1 <- factor(txt1$sex)
gender1

summary(factor1)
summary(gender1)
View(txt1)

stringsAsFactors=FALSE     # ???? 무슨 말인지 이해 못함

Sys.Date()
Sys.time()
date()
class(Sys.Date())
class("2019-05-30")   # as.Date() 문자를 날짜형식으로 바꾸어 줌

as.Date("01-11-2014")
as.Date("01-11-2014",format="%d-%m-%Y")    # y소문자는 년도를 2자리로, Y대문자는 년도를 네자리수로 표현함
as.Date("19-05-30",format="%y-%m-%d")
as.Date("190530",format="%y%m%d")
as.Date("2014년 11월 1일",format="%Y년 %m월 %d일")
as.Date("01112014",format="%d%m%y")
as.Date("05-30",format="%m-%d")

as.Date(10,origin="2019-05-30")
as.Date(-10,origin="2019-05-30")
as.Date(10,origin=date())      # 문자열만 가능
as.Date(10,origin=Sys.Date())

"2019-05-30" - "2019-05-27"
as.Date("2019-05-30") - as.Date("2019-05-27")

as.Date("2014-11-1") + 5
as.Date("2019-11-14") - Sys.Date()

as.Date("2014-11-01 20:00:00") - as.Date("2014-11-01 18:30")
as.POSIXct("2014-11-01 20:00:00") - as.POSIXct("2014-11-01 18:30:30")
0.491667 * 60
0.50002 * 60

install.packages("lubridate")
library("lubridate")
now()
date <- now()     # 현재 날짜와 시간 넣기
date
year(date)
month(date)
month(date,label=T)
day(date)
wday(date)
wday(date,label=T)
wday(date,label=F)
date <- date - days(2); date
month(date) <- 2; date
date <- now()
date + years(1)
date + months(1)
date + days(1)
date + hours(1)
date + minutes(1)
date + seconds(1)
date <- hm("22:30"); date
date <- hms("22:30:15"); date

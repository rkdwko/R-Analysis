install.packages("ggplot2")
library(ggplot2)
mpg
View(mpg)
# dplyr 연습문제
#1
mpg4 <- filter(mpg, displ <= 4)
mean(mpg4$hwy)
mpg5 <- filter(mpg, displ >= 5)
mean(mpg5$hwy)

#2
mpg6 <- filter(mpg, manufacturer =='audi')
mean(mpg6$cty)
mpg7 <- filter(mpg, manufacturer =='toyota')
mean(mpg7$cty)

#3
mpg %>%
  filter(manufacturer %in% c('chevrolet','ford','honda')) %>%
  summarise(average = mean(hwy))

#4
mpg_4 <- select(mpg, class, cty)
head(mpg_4); tail(mpg_4)

#5
mpg_4 %>%
  filter(class %in% c('suv','compact')) %>%
  group_by(class) %>%
  summarise(average = mean(cty))

#6
mpg %>%
  filter(manufacturer == 'audi') %>%
  select(manufacturer, model, hwy) %>%
  arrange(desc(hwy)) %>%
  head(5)

#7-1
mpg_new <- mpg %>%
  mutate(cty_hwy = cty + hwy)

#7-2
mpg_new <- mpg_new %>%
  mutate(ch_avg = cty_hwy /2)

#7-3
mpg_new %>%
  arrange(desc(ch_avg)) %>%
  head(3)

#7-4
mpg %>%
  select(-displ:-drv) %>%
  mutate(cty_hwy)


#8
mpg %>%
  group_by(class) %>%
  summarise(average = mean(cty))

#9
mpg %>%
  group_by(class) %>%
  summarise(average = mean(cty)) %>%
  arrange(desc(average))

#10
mpg %>%
  group_by(manufacturer) %>%
  summarise(average = mean(hwy)) %>%
  arrange(desc(average)) %>%
  head(3)

#11
mpg %>%
  filter(class = 'compact') %>%
  
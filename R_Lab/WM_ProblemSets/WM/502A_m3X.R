# 09/12/2020 Loubens Louis Prob and Stats

library(xlsx)

# pizza & beer

data = read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m3-expert-data2-pizza-and-beer.xls", 1)

# rename columns
names(data)[c(1, 2, 3, 4, 5, 6, 7, 8)] = c("Spending Pattern", "18-24", "25-34", "35-44", "45-54", "55-64", "65+", "Total")

# 1 PIZZA AND BEER DATA SET
all_spnd_lss <- data$Total[1]
all_spnd_sme <- data$Total[2]
all_spnd_more <- data$Total[3]
total_resp <- data$Total[4]

# 1a - random slcted spend more

p_rand_more <- all_spnd_more/total_resp
p_rand_more

# 1b - prob respondent < 25YO

p_lss_25 <- data$`18-24`[4]/total_resp
p_lss_25

# 1c - prob respondent is < 35YO AND spend more

p_lss_35_more <- ((sum(data$`18-24`[4], data$`25-34`[4])) / total_resp) * p_rand_more
p_lss_35_more

# 1d - resp < 25 OR spend more
p_lss_25_or_more <- p_lss_25 + p_rand_more - (p_lss_25 * p_rand_more)
p_lss_25_or_more

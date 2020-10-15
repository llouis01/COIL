# 09/12/2020 Loubens Louis Prob and Stats

library(xlsx)

# 1 PIZZA AND BEER DATA SET

data = read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m3-expert-data2-pizza-and-beer.xls", 1)

# rename columns
names(data)[c(1, 2, 3, 4, 5, 6, 7, 8)] = c("Spending Pattern", "18-24", "25-34", "35-44", "45-54", "55-64", "65+", "Total")

# declare some variables that might get repeated a lot
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

# 1e - p(35-44 | spnd_more)
p_3544_gvn_more <- ((data$`35-44`[4]/total_resp) * p_rand_more) / p_rand_more
p_3544_gvn_more

# 1f - resp 55-64 NOT spnd more
p_5564_more <- data$`55-64`[3]/data$`55-64`[4]
p_5564_NOT_more <- 1 - p_5564_more
p_5564_NOT_more

# 1g - resp > 34 spnd more
p_34plus_more <- sum(data$`35-44`[3], data$`45-54`[3], data$`55-64`[3], data$`65+`[3]) / total_resp
p_34plus_more

# 1h - resp 65+ spnds same
p_65plus_same <- data$`65+`[2]/total_resp
p_65plus_same

# 1i - Are responses independent of ages?
" I deduce that age is independent of spending pattern because there are a lot of reasons that can make someone spend more or less on beer and pizza. There seems to be no way of clearly saying or arguing against the older a person is, the less they spend on pizza and beer. For that reason, I think the responses are independent of ages."



# 2 Students, majors and marijuana use

# 2a - Make a probability tree
library(DiagrammeR)

studata <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m3-expert-data3-students.xls", 1)

students <- Node$new("Students")
  stem <- students$AddChild("STEM")
    stem_uses <- stem$AddChild("Uses marijuana")
    stem_not_use <- stem$AddChild("does not use marijuana")
  sbs <- students$AddChild("Social/Behavioral Sciences")
    sbs_uses <- sbs$AddChild("Uses marijuana")
    sbs_not_use <- sbs$AddChild("does not use marijuana")
  arts_hu <- students$AddChild("Arts and Humanities")
    hu_uses <- arts_hu$AddChild("Uses marijuana")
    hu_not_use <- arts_hu$AddChild("does not use marijuana")
  Business <- students$AddChild("Business")
    bus_use <- Business$AddChild("Uses marijuana")
    bus_not_use <- Business$AddChild("does not use marijuana")

stem$p <- .19
sbs$p <- .32
arts_hu$p <- .28
Business$p <- .21

stem_uses$p <- .15
stem_not_use$p <- .85
sbs_uses$p <- .40
sbs_not_use$p <- .60
hu_uses$p <- .65
hu_not_use$p <- .35
bus_use$p <- .32
bus_not_use$p <- .68

print(students, "p")

# styling the tree
GetNodeLabel <- function(node) paste0('Prob\n', node$p)
GetEdgeLabel <- function(node) {
      label = node$name
  return (label)
}
SetEdgeStyle(students, fontname = 'helvetica', label = GetEdgeLabel)
SetNodeStyle(students, fontname = 'helvetica', label = GetNodeLabel, shape = 'Diamond', color = 'red')
SetGraphStyle(students, rankdir = "LR")
plot(students)

# 2b - percentage who uses marijuana
pct_uses <- sum((studata$Science..Technology..Engineering.and.Math[1] * studata$Science..Technology..Engineering.and.Math[2]), (studata$Social.Behavioral.Sciences[1] * studata$Social.Behavioral.Sciences[2]), (studata$Arts.and.humanities[1] * studata$Arts.and.humanities[2]), (studata$Business[1] * studata$Business[2]))
pct_uses

#2c - pctage abstainers
pct_complement = 1 - pct_uses
pct_complement

# 2d - p(arts&Hu | uses )
(pct_uses * .28) / pct_uses

# 2e - p(bus | uses)
(pct_uses * .21) / pct_uses

# 2f - p(stem | uses)
(pct_uses * .19) / pct_uses

# 2g - p(arts&Hu | not_uses )
(.28 * pct_complement) / pct_complement

# 2h - p(sbs | not_use)
(.32 * pct_complement) / pct_complement

# 2i - p(stem | abstain)
(pct_complement * .19) / pct_complement

# 2j - p(stem | abst)
# similar to 2i



# Defects

dfcts <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m3-expert-data1-defects.xls", 1)
dfcts
str(dfcts)
head(dfcts)

# 3a - calculate probability of defective monitor
sample_space <- 0:4
total_monitors <- nrow(dfcts)
total_monitors

prob0 <- sum(dfcts$X..Defects == 0) / total_monitors
prob1 <- sum(dfcts$X..Defects == 1) / total_monitors
prob2 <- sum(dfcts$X..Defects == 2) / total_monitors
prob3 <- sum(dfcts$X..Defects == 3) / total_monitors
prob4_plus <- sum(dfcts$X..Defects == 4, dfcts$X..Defects == 5, dfcts$X..Defects == 6, dfcts$X..Defects == 7) / total_monitors
probs <- c(prob0, prob1, prob2, prob3, prob4) # all adds to 1
cbind(sample_space, probs)

# 3b - expected defct/monitor
e_dfct <- sum(sample_space * probs)
e_dfct

# 3c - std dev fpr dfcts
dev <- (sample_space - e_dfct)^2 * probs
std_dev <- sqrt(sum(dev))
std_dev

# 3d - dfcts in nxt 100 monitors
monitor_100 <- dfcts$X..Defects[c(1:100)]
monitor_100
length(monitor_100)

prob100_0 <- sum(monitor_100 == 0) / 100
prob100_1 <- sum(monitor_100 == 1) / 100
prob100_2 <- sum(monitor_100 == 2) / 100
prob100_3 <- sum(monitor_100 == 3) / 100
prob100_4p <- sum(monitor_100 == 4, monitor_100 == 5, monitor_100 == 6, monitor_100 == 7) / 100
probs100 <- c(prob100_0, prob100_1, prob100_2, prob100_3, prob100_4p)
cbind(sample_space, probs100)

e_dfct100 <- sum(sample_space * probs100)
e_dfct100

# 3e - std dev in next 100
dev100 <- (sample_space - e_dfct100)^2 * probs100
std_dev100 <- sqrt(sum(dev100))
std_dev100

# 3f - how many dfctive monitors from nxt 100
100 * prob100_4p

# 3g - warranty costs
# if we are considering the next 100 computers, 53 computers will be defective, the company will find 50% of the defective ones (roughly 26 or 27 out of thee 53). 74.49 times 26 computers equal 1936.74 dollars to be spent on warranty costs.


# 4 Smartphone

# 4a - percentage of overall defctve
ovrl_dfc <- sum((.45 * .01), (.35 * .02), (.20 * .01))
# 1.35 %

# 4b - conditional dfctive
(ovrl_dfc * .45) / ovrl_dfc
(ovrl_dfc * .35) / ovrl_dfc
(ovrl_dfc * .20) / ovrl_dfc

# 4c - conditional non-dfc
ovrl_non_dfc <- 1 - ovrl_dfc
(ovrl_non_dfc * .45) / ovrl_non_dfc
(ovrl_non_dfc * .35) / ovrl_non_dfc
(ovrl_non_dfc * .20) / ovrl_non_dfc


# 5 flights

# 5a - prob that 15 are on time
dbinom(15, 25, .6)

# 5b - at most 5
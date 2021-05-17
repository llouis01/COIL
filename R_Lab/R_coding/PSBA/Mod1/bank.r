#### Module 1 Bank Assignment ####
rm(list=ls())

# install library
install.packages("tidyr")
install.packages("lubridate")
install.packages("dplyr")
library(dplyr)
library(tidyr)
library(lubridate)

# import data
bank <- readClipboard() # not a table
str(bank)

# import as table
bank = read.table(file = "clipboard", sep = "\t", header = T)
str(bank)

bank$Date <- as.Date(bank$Date, format = '%m/%d/%Y') # reformat date column
str(bank)


#1. Total deposit amt per branch by acct type
table(bank$AcctType)

bank$Amount <- as.factor(bank$Amount)
bank$Amount <- as.numeric(bank$Amount)

bank %>%
  group_by(AcctType) %>%
  summarise(Sum = sum(Amount))


#2. accts opnd at each brnch by acct type

bank %>%
  group_by(AcctType) %>%
  summarise(sum = sum(Amount), count = n())


#3. Distibution for various acct types
























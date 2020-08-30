# M1 Expert Problem Set by Loubens Louis

rm(list = ls())

# load xlsx package
require('xlsx')

#import data set
w_data <- read.xlsx(choose.files(), 1)
str(w_data)

# Frequency Tables for AcctType
AcctType <- table(w_data$AcctType)
AcctType <- as.data.frame(AcctType)
names(AcctType)[1] <- "Account Type"
names(AcctType)[2] <- "Frequency"
AcctType$Rel_freq <- AcctType$Frequency/sum(AcctType$Frequency)
AcctType

# Frequency Table
# M1 Expert Problem Set by Loubens Louis

rm(list = ls())

# load xlsx package
require('xlsx')

#import data set
w_data <- read.xlsx(choose.files(), 1)
str(w_data)

# Frequency Tables for AcctType; we need a frequency table to feed barplot & pie
AcctType <- table(w_data$AcctType)
AcctType <- as.data.frame(AcctType)
names(AcctType)[1] <- "Account Type"
names(AcctType)[2] <- "Frequency"
AcctType$Rel_freq <- AcctType$Frequency/sum(AcctType$Frequency)
AcctType

# Frequency Table for OpenedBy
OpenedBy <- table(w_data$OpenedBy)
OpenedBy <- as.data.frame(OpenedBy)
names(OpenedBy)[1] <- "Opened By"
names(OpenedBy)[2] <- "Frequency"
OpenedBy$Rel_freq <- OpenedBy$Frequency/sum(OpenedBy$Frequency)
OpenedBy

# Frequency Table for Branch
Branch <- table(w_data$Branch)
Branch <- as.data.frame(Branch)
names(Branch)[1] <- "Branch"
names(Branch)[2] <- "Frequency"
Branch$Rel_freq <- Branch$Frequency/sum(Branch$Frequency)
Branch

# Frequency Table for Customer
Customer <- table(w_data$Customer)
Customer <- as.data.frame(Customer)
names(Customer)[1] <- "Customer Type"
names(Customer)[2] <- "Frequency"
Customer$Rel_freq <- Customer$Frequency/sum(Customer$Frequency)
Customer

# Bar chart for AcctType
AcctType <- table(w_data$AcctType)
barplot(AcctType, main = "Account Type Frequency Bar Chart")

# Bar chart for OpenedBy
OpenedBy <- table(w_data$OpenedBy)
barplot(OpenedBy, main = "Opened by Frequency Bar Chart")

# Bar Chart for Branch
Branch <- table(w_data$Branch)
barplot(Branch, main = "Branch Frequency Bar Chart")

# Bar Chart for Customer
Customer <- table(w_data$Customer)
barplot(Customer, main = "Customer Frequency Bar Chart")

# Pie chart for AcctType
AcctType <- table(w_data$AcctType)
pie(AcctType, labels = names(AcctType), main = "Pie Chart for Account Type")

# Pie Chart for OpenedBy
OpenedBy <- table(w_data$OpenedBy)
pie(OpenedBy, labels = names(OpenedBy), main = "Pie Chart for Opened By")

# Pie Chart for Branch
Branch <- table(w_data$Branch)
pie(Branch, labels = names(Branch), main = "Pie Chart for Branch")

# Pie Chart for Customer
Customer <- table(w_data$Customer)
pie(Customer, labels = names(Customer), main = "Pie Chart for Customer")
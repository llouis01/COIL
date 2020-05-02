rm(list=ls())

## TASK 1 ##
mort_data=read.csv("mortality_data.csv",header=T)
require(tidyverse)
mort_data=mort_data%>% filter(year>=1993 & year<=2015)

## TASK 2 ##
colnames(mort_data)[c(4:11)] <- c("mort_rate","prob_death","ave_length_surv","num_of_surv",
                                  "num_of_deaths","num_years_lived","num_years_left","life_expec")

## TASK 3 ##
require(stringr)
mort_data$age=as.character(mort_data$age)
Age2=str_replace(mort_data$age,"\\-.*","")
Age2=as.numeric(Age2)
mort_data=cbind(mort_data,Age2)

## TASK 4 ##
library(data.table)
agebreaks=c(0,18,64,1000)
agelabels <- c("<18","18-64",">64")
setDT(mort_data)[ , age_groups := cut(Age2, 
                                breaks = agebreaks, 
                                right = FALSE, 
                                labels = agelabels)]
## TASK 5 ##
require(tibble)
mort_data=subset(mort_data, select = -c(age,Age2))
col_order=c("state","year","age_groups","mort_rate","prob_death","ave_length_surv","num_of_surv","num_of_deaths",
               "num_years_lived","num_years_left","life_expec")
mort_data<- mort_data[,col_order]

## TASK 6 ##
aggregate(cbind(mort_rate,prob_death,ave_length_surv,num_of_surv,num_of_deaths,
               num_years_lived,num_years_left) ~ state + year+age_groups, FUN=sum, data=mort_data)

## TASK 7 ##
inc_data=read.csv("income_data.csv",header = T)
inc_data <- reshape(inc_data, 
             varying = c("pinc.1993","pinc.1994","pinc.1995","pinc.1996","pinc.1997"
                        ,"pinc.1998","pinc.1999","pinc.2000","pinc.2001","pinc.2002","pinc.2003","pinc.2004","pinc.2005","pinc.2006","pinc.2007","pinc.2008","pinc.2009"
                         ,"pinc.2010","pinc.2011","pinc.2012","pinc.2013","pinc.2014","pinc.2015"), 
             ,sep = ".",
             direction = "long")

## TASK 8 ##
inc_data=inc_data[,-4]

require(tidyverse)
inc_data=inc_data%>% 
  rename(
    year=time,
    income=pinc)

inc_data<-inc_data[order(inc_data$state,inc_data$year),]

## TASK 9 ##
library(tidyverse)
education1=dir("C:/Users/Martin/Desktop/CARLOS/education",full.names = T)%>%map_df(read.csv)
education1=education1[,-c(1,6)]
education2=read.csv(file.choose(),header = T)
educ_data=rbind(education1,education2)
names(educ_data)[3:4] <- c("phs","pcoll")


## TASK 10
library(plyr)
library(readr)
mydir = "expenditure"
myfiles = list.files(path=mydir, pattern="*.csv", full.names=TRUE)
expnd.data=ldply(myfiles, read_csv)
expnd.data=expnd.data[,-c(10:11)]

## TASK 11
data=merge(inc_data,educ_data,by=c("state","year"))

## TASK 12
names(expnd.data)[1:2] <- c("state","year")
data=merge(data,expnd.data,by=c("state","year"))

## TASK 13 ##
data=merge(data,mort_data,by=c("state","year"))

## TASK 14 ##
require(tidyverse)

## TASK 15 ##
data[,c("income","Total_revenue","Taxes","Total_expenditure","Education","Public_welfare",
        "Hospitals","Health")]=data[,c("income","Total_revenue","Taxes","Total_expenditure","Education","Public_welfare",
                    "Hospitals","Health")]/10000

## TASK 16 ##
data[,c("phs","pcoll")]=data[,c("phs","pcoll")]/100

## TASK 17 ##
require(stargazer)
stargazer(data,type = "html",out="descriptive.doc",out.header = T)

## TASK 18 ##
data1=data[data$age_groups == ">64",]
reg1=lm(mort_rate~Health+Hospitals+log(income)+phs+pcoll,data = data1)

## TASK 19 ##
reg2=lm(mort_rate~Health+Hospitals+log(income)+phs+pcoll+state,data = data1)

## TASK 20 ##
reg3=lm(mort_rate~Health+Hospitals+log(income)+phs+pcoll+state+year,data = data1)

## TASK 21 ##
stargazer(reg1,reg2,reg3,type = "html",out="regressions.doc",out.header = T)


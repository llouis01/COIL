require(xlsx)

ETF_data <- read.xlsx(choose.files(), 1)
AMZ_data <- read.xlsx(choose.files(), 1)
MLB16_data <- read.xlsx(choose.files(), 1)

# Let's analyze ETF's data first
str(ETF_data)
# I notice the 3-month, 1-year, 3-year columns are in string types. I need to convert them into numerical values.

ETF_data$X3.mo.Return.. <- as.numeric(ETF_data$X3.mo.Return..)
ETF_data$X1.yr.Return.. <- as.numeric(ETF_data$X1.yr.Return..)
ETF_data$X3.yr.Return.. <- as.numeric(ETF_data$X3.yr.Return..)

str(ETF_data)
# The columns are in the right types

# create histogram for 1-month return
hist(ETF_data$X1.mo.Return.., main = "Histogram for 1-month Return")

# create histogram for 3-month return
hist(ETF_data$X3.mo.Return.., main = "Histogram for 3-month Return")

# create histogram for 1-year return
hist(ETF_data$X1.yr.Return.., main = "Histogram for 1-year Return")

# create histogram for 3-year return
hist(ETF_data$X3.yr.Return.., main = "Histogram for 3-year Return")

# 1A) All four histograms look similar in terms of shape initially; all four were unimodal in appearance. However, the 1-month return had the least variations as it almost displayed two peaks, which could qualify it as a bimodal histogram. the 3-month return histogram seemed almost like a regular Bell curve, with one visible peak between 0 to 10 percent, showing nearly 1200 times. The 1-year return histogram was right-skewed and displayed the most frequent range at above 800. The 3-year return histogram showed the most variations as the most frequent range of percentage were roughly above 600 and it also displayed an outlier range for the percentage in returns between -60 to -50 percent.

boxplot(ETF_data$X1.mo.Return.., main = "1-month Boxplot")
boxplot(ETF_data$X3.mo.Return.., main = "3-month Boxplot")
boxplot(ETF_data$X1.yr.Return.., main = "1-year Boxplot")
boxplot(ETF_data$X3.yr.Return.., main = "3-year Boxplot")
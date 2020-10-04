# 4

# import data
wine <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m6-expert-dataset-wine.xls", 1)

# 4a - convert to age
wine$Cellar.1 = 2020 - wine$Cellar.1
wine$Cellar.2 = 2020 - wine$Cellar.2
wine

# 4b - check data
hist(wine$Cellar.1)
qqnorm(wine$Cellar.1)
qqline(wine$Cellar.1, col = 'red')

hist(wine$Cellar.2)
qqnorm(wine$Cellar.2)
qqline(wine$Cellar.2, col = 'red')

# 4c - sample means ofr age
ybar_c1 <- mean(wine$Cellar.1, na.rm = T)
ybar_c2 <- mean(wine$Cellar.2, na.rm = T)

# 4d - differences in mean wine ages from cc's
ybar_cc <- ybar_c1 - ybar_c2
# c1 wines tend to be on average .45 yr older than c2 wines (5-6 month)

# 4e
c1_var <- var(wine$Cellar.1)
c2_var <- var(wine$Cellar.2, na.rm = T)

# 4f
sd_c1 <- sqrt(c1_var)
sd_c2 <- sqrt(c2_var)

# 4g
se_cc <- sqrt(c1_var/length(wine$Cellar.1) + c2_var/length(na.omit(wine$Cellar.2)))

# 4h
# H0: ybar_c1 = ybar_c2
# Ha: ybar_c1 =/= ybar_c2
tstat <- ybar_cc / se_cc



# 5
# H0: mu_c1 = mu_c2
c1 = wine$Cellar.1
c1_n <- length(c1)
c2 <- wine$Cellar.2
c2_n <- length(na.omit(c2))

t.test(c1, c2, alternative = "two.sided")

df_wines <- ((c1_var/c1_n + c2_var/c2_n)^2) / (((c1_var/c1_n)^2 / (c1_n - 1))  + ((c2_var/c2_n)^2 / (c2_n-1))) # verify df

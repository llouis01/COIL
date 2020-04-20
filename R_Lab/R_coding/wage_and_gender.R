load('wage1000.rda')

attach(data)

stargazer::stargazer(data, title = "Statistical Summary",
                     type = "text")

ols1 <-lm(wage~female+nonwhite+unionmember+education+experience)

ols2 <-lm(wage~female+nonwhite+unionmember+education+experience+I(experience^2))

stargazer::stargazer(ols1, ols2, title = "OLS Results", type = "text") # observe results jointly


mylm = lm(cars$dist~cars$speed)
summary(mylm)

predict(mylm, interval = "confidence")

coef(mylm)

resid(mylm)
plot(resid(mylm))
plot(cars$speed, cars$dist)
abline(cars$speed, cars$dist)

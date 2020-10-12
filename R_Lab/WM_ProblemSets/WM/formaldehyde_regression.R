Formaldehyde
plot(Formaldehyde)
fit = lm(optden ~., data = Formaldehyde)
summary(fit)
plot(fit$residuals)
summary(fit)$coefficients[,1]
resid = fit$residuals

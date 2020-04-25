## CA School test score regression ##

output <- lm(testscr ~ str + el_pct, data = caschool)
# the lm() needs a formula (testscr ~ str + el_pct) and a data source (data = some_data_source).

coef(output, vcov = vcovHC(output, type = "HC1"))
# the coefficient shows the b0 and b1 of the regression as well as the intercept.

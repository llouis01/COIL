### Econ382, Final Project, Loubens Louis ###

install.packages("readr")
install.packages("stringr")

mort_data = mortality_data[(mortality_data$year >= 1993
                                 & mortality_data$year <= 2015),]

colnames(mort_data)[4:11] = c("mort_data", "prob_death", "ave_length_surv", "num_of_surv", "num_of_deaths", "num_years_lived", "num_years_left", "life_expec") # colnames() to rename columns

mort_data # check if object is generated successfully

stringr::str_locate(mort_data, "-")



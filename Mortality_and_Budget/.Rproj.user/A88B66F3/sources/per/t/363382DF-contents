########## Econ382, Final Project, Loubens Louis


# Q1

mort_data = mortality_data[(mortality_data$year >= 1993
                                 &
                              mortality_data$year <= 2015),]


# Q2

colnames(mort_data)[4:11] = c("mort_data", "prob_death", "ave_length_surv", "num_of_surv", "num_of_deaths", "num_years_lived", "num_years_left", "life_expec") # colnames(file)[index] to rename columns

mort_data # check if object is generated successfully


# Q3

mortality_data$tmp = stringr::str_locate(mortality_data$age, "-")[ , 1]

mortality_data$age2 <- stringr::str_sub(mortality_data$age, 1,
                                        mortality_data$tmp-1)

mortality_data$age2 = as.numeric(mortality_data$age2)


# Q4

mortality_data$age_group <- cut(mortality_data$age2,
    breaks = c(0, 18, 64, 110),
    labels = c("<18", "18-64", ">64"),
    include.lowest = TRUE)

mortality_data$age2[mortality_data$age == "0"] = "0"

mortality_data$age2[mortality_data$age == "110+"] = "110"

mortality_data$age2 = as.numeric(mortality_data$age2)


# Q6

mortality_data = mortality_data[ , -c(3, 12, 13)]

mortality_data = mortality_data[ , c(1, 2, 11, 3:10)]

# aggregate(mortality_data$state = "Alaska",

# Q7

inc_data = reshape(income_data,
                   varying = names(income_data)[2:24],
                   timevar = "year",
                   sep = ".",
                   direction = "long")

inc_data = inc_data[order(inc_data$state, inc_data$year), ]

inc_data = inc_data[ , -4]


# Q8


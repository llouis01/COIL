########## Econ382-10, Final Project, Loubens Louis ##########

rm(list = ls()) # clear console

setwd("~/GitHub/Data_Analysis/Mortality_and_Budget") # setwd(project_folder)


########## Cleansing of mortality_data.csv ##########

# Q1

mort_data <- read.csv("Data_sets/mortality_data.csv")

mort_data = mort_data[(mort_data$year >= 1993
                                 &
                              mort_data$year <= 2015),]


# Q2

colnames(mort_data)[4:11] = c("mort_data", "prob_death", "ave_length_surv", "num_of_surv", "num_of_deaths", "num_years_lived", "num_years_left", "life_expec") # colnames(file)[index] to rename columns

mort_data # check if object is generated successfully


# Q3

mort_data$tmp = stringr::str_locate(mort_data$age, "-")[ , 1]

mort_data$age2 <- stringr::str_sub(mort_data$age, 1,
                                        mort_data$tmp-1)

mort_data$age2[mort_data$age == "0"] = "0"

"I think changing the 0's and 110+'s is better if executed soon after the creation
of age2; since I tried updating them after creating the age_group and they still
remained."

mort_data$age2[mort_data$age == "110+"] = "110"

mort_data$age2 = as.numeric(mort_data$age2)

mort_data


# Q4

mort_data$age_group <- cut(mort_data$age2,
                           breaks = c(0, 18, 64, 110),
                           labels = c("<18", "18-64", ">64"),
                           include.lowest = TRUE)

mort_data$age2 = as.numeric(mort_data$age2)

mort_data


# Q5

mort_data = mort_data[ , -c(3, 12, 13)]

mort_data = mort_data[ , c(1, 2, 11, 3:10)]


# Q6

mort_data <- aggregate(.~ state + year + age_group,
                       data = mort_data,
                       FUN = function(x) {sum(x, na.rm = T)})

mort_data <- mort_data[order(mort_data$state, mort_data$year), ]


########## Cleansing of income_data.csv ##########

# Q7

inc_data <- read.csv("Data_sets/income_data.csv")

inc_data = reshape(inc_data,
                    varying = names(inc_data)[2:24],
                    timevar = "year",
                    sep = ".",
                    direction = "long")

inc_data = inc_data[ , -4]


# Q8

inc_data = inc_data[order(inc_data$state, inc_data$year), ]



########## Cleansing of education datasets ##########

# Q9

setwd("~/GitHub/Data_Analysis/Mortality_and_Budget/Data_sets/education")

file_list = list.files(path = "~/GitHub/Data_Analysis/Mortality_and_Budget/Data_sets/education")

educ_data = data.frame()

install.packages('tidyverse')
require("tidyverse")

for (f in 1:length(file_list)){
  temp_data <- read_csv(file_list[f], col_names = TRUE)
  colnames(temp_data) <- c("state", "year", "percent_highschool", "percent_college")
  educ_data <- rbind(educ_data, temp_data)
}

education_0715 <- read_csv("~/GitHub/Data_Analysis/Mortality_and_Budget/Data_sets/education_0715.csv")

educ_data <- rbind(educ_data, education_0715)

colnames(educ_data) <- c('state', 'year', 'phs', 'pcoll')

rm(file_list, temp_data, f)


########## Cleansing of expenditure datasets ##########

# Q10

setwd("~/GitHub/Data_Analysis/Mortality_and_Budget/Data_sets/expenditure")

file_list <- list.files(path = "~/GitHub/Data_Analysis/Mortality_and_Budget/Data_sets/expenditure")

expnd_data <- data.frame()

for (f in 1:length(file_list)){
  temp_data <- read_csv(file_list[f], col_names = T)
  colnames(temp_data) <- c('state', 'year', 'tot_revenue', 'taxes', 'tot_expnd',
                           'education', 'public_welfare', 'hospital', 'health')
  expnd_data <- rbind(expnd_data, temp_data)
}

rm(temp_data, file_list, f)



########## Merging data frames for regression ##########

# Q11 One-to-One merge

data = merge(inc_data, educ_data, by = c('state', 'year'))

# Q12 One-to-One merge

data = merge(data, expnd_data, by = c('state', 'year'))

# Q13 Many-to-One merge

data <- merge(mort_data, data, by = c('state', 'year'))

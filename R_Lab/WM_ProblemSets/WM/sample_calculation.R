tstar = 1.96
current_ME = tstar * te_se
goal_ME <- current_ME * .40
req_n <- round((1.96 * te_se/goal_ME) ^ 2)

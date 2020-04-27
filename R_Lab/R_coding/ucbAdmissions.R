##### R Essential

?UCBAdmissions
UCBAdmissions$gender
str(UCBAdmissions)
plot(UCBAdmissions)


margin.table(UCBAdmissions)
?margin.table


admit.dept <- margin.table(UCBAdmissions, 3)# new table for admit data
admit_gendr <- margin.table(UCBAdmissions, 2)
barplot(admit_dept)
barplot(admit_gendr)
admit_dept
prop.table(admit.dept)
barplot(round(prop.table(admit.dept), 2)*100)
round(prop.table(admit.dept), 2)*100

admit1 <- as.data.frame(UCBAdmissions)
admit1
colnames(UCBAdmissions)
names(UCBAdmissions)



admit1
admit2 <- lapply(admit1, function(x)rep(x, admit1$Freq))
admit3 <- as.data.frame(admit2)
admit3
admit3 = admit3[ , -4]
admit3
admit3$Admit


admit.rows <- as.data.frame(lapply(as.data.frame(UCBAdmissions), function(x)rep(x, as.data.frame(UCBAdmissions)$Freq)))[ , -4]
str(admit.rows)

admit.rows[,3]


##### colors

x1 <- scan()
x1
barplot(x1, col = "gold2") #deepskyblue1's position alphabetically
?colors
colors()
col2rgb("gold2")
?palette
palette()


x1
barplot(x1, col = rainbow(6) )
install.packages("RColorBrewer")
display.brewer.pal(6, "Greens")

greens <- brewer.pal(6, "Greens")
greens
barplot(x1, col = brewer.pal(6, "Paired"))

hot <- heat.colors(8)
hot
barplot(x1, col = hot)

light <- cm.colors(11)
barplot(x1, col = light)
rm(list =ls())


##### Plots


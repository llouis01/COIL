# 4
# import data

wine <- read.xlsx("C:\\Users\\Loube\\OneDrive - William & Mary\\Bus_Stats_BUAD502A\\Assignments\\buad502a-m6-expert-dataset-wine.xls", 1)

# convert to age
wine$Cellar.1 = 2020 - wine$Cellar.1
wine$Cellar.2 = 2020 - wine$Cellar.2
wine

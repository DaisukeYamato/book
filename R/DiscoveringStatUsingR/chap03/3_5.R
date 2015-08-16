# Chap 3.5
setwd("/Users/yamato/programs/R/textbooks/DiscoveringStatUsingR/chap03/")
######################################################
# Name
metallicaNames <- c ("Lars", "James", "Kirk", "Rob")
# Ages
metallicaAges <- c(47, 47, 48, 46)
# dataframe
metallica <- data.frame(Name = metallicaNames, Age = metallicaAges)

# childAges
metallica$childAge <- c(12, 12, 4, 6)

# 3.5.3
metallica$fatherhoodAge <- metallica$Age - metallica$childAge

# 3.5.4
name <- c("Ben", "Martin", "Andy", "Paul", "Graham", "Carina", "Karina", "Dong", "Mark", "Zoe")

birth_date <- as.Date(c("1977-07-03", "1969-05-24", "1973-06-21", "1970-07-16", "1949-10-10", "1983-11-05","1987-10-08", "1989-09-16", "1973-05-20", "1984-11-12") )

job <- c(rep(1,5), rep(2,5))
job <- factor(job, levels=c(1:2), labels=c("Lecturer", "Student"))
# or 
# job <- gl(2, 5, labels = c("Lecturer","Student"))

friends <- c(5, 2, 0, 4, 1, 10, 12, 15, 12, 17)

alcohol <- c(10, 15, 20, 5, 30, 25, 20, 16, 17, 18)

income <- c(20000, 40000, 35000, 22000, 50000, 5000, 100, 3000, 10000, 10)

neurotic <- c(10, 17, 14, 13, 21, 7, 13, 9, 14, 13)

lecturerData <- data.frame(name, birth_date, job, friends, alcohol, income, neurotic)

#########################################################
# chap 3.8

write.table(metallica, "Metallica Data.tsv",sep="\t",row.names=FALSE)

#########################################################
# chap 3.9
lecturerPersonality <- lecturerData[,c("friends","alcohol","neurotic")]

lecturerOnly <- lecturerData[job=="Lecturer",]

alcoholPersonality <- lecturerData[alcohol > 10, c("friends","alcohol","neurotic")]
# 3.9.2
lecturerOnly <- subset(lecturerData, job=="Lecturer")

alcoholPersonality <- subset(lecturerData, alcohol > 10, select = c("friends", "alcohol", "neurotic"))

# 3.9.3
alcoholPersonalityMatrix <- as.matrix(alcoholPersonality)

# 3.9.4
satisfactionData <- read.delim("Honeymoon Period.dat", header=TRUE)

satisfactionStacked <- stack(satisfactionData, select = c("Satisfaction_Base", "Satisfaction_6_Months", "Satisfaction_12_Months", "Satisfaction_18_Months"))

satisfactionUnstacked <- unstack(satisfactionStacked, values ~ ind)

install.packages("reshape")
library(reshape)

restructureData <- melt(satisfactionData, id = c("Person", "Gender"), measured = c("Satisfaction_Base", "Satisfaction_6_Months", "Satisfaction_12_Months", "Satisfaction_18_Months"))

wideData <- cast(restructureData, Person + Gender ~ variable, value = "value")
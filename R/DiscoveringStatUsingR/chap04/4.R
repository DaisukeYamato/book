setwd("/Users/yamato/programs/R/textbooks/DiscoveringStatUsingR/chap04")
# 4.3
#install.packages("ggplot2")
library(ggplot2)

# 4.4
facebookData <- read.delim("FacebookNarcissism.dat", header = TRUE)
graph <- ggplot(facebookData, aes(NPQC_R_Total, Rating))
graph + geom_point()
graph + geom_point(shape = 17)
graph + geom_point(size=6)
graph + geom_point(aes(colour = Rating_Type))
graph + geom_point(aes(colour = Rating_Type), position = "jitter")
graph + geom_point(aes(shape = Rating_Type), position = "jitter")

# 4.5
examData <- read.delim("Exam Anxiety.dat", header=TRUE)
scatter <- ggplot(examData, aes(Anxiety, Exam))
scatter + geom_point()
scatter + geom_point() + labs(x = "Exam Anxiety", y = "Exam Performance %")
scatter + geom_point() + geom_smooth() + labs(x = "Exam Anxiety", y = "Exam Performance %")
 + geom_smooth(method="lm")
scatter + geom_point() + geom_smooth(method="lm", colour="Red")+ labs(x = "Exam Anxiety", y = "Exam Performance %")

scatter + geom_point() + geom_smooth(method="lm", se=F)+ labs(x = "Exam Anxiety", y = "Exam Performance %")
scatter + geom_point() + geom_smooth(method="lm", alpha = 0.1, fill = "Blue")+ labs(x = "Exam Anxiety", y = "Exam Performance %")

# 4.5.3
scatter <- ggplot(examData, aes(Anxiety, Exam, colour = Gender))
scatter + geom_point() + geom_smooth(method = "lm")
scatter + geom_point() + geom_smooth(method = "lm", aes(fill = Gender), alpha = 0.1)
scatter + geom_point() + geom_smooth(method = "lm", aes(fill = Gender), alpha = 0.1) + labs(x = "Exam Anxiety", y = "Exam Performance %", colour = "Gender")

# 4.6 (Histograms)
festivalData <- read.delim("DownloadFestival.dat", header = TRUE)
festivalHistogram <- ggplot(festivalData, aes(day1)) + theme(legend.position = "none")
festivalHistogram + geom_histogram(binwidth=0.4) + labs(x = "Hygiene (Day 1 of Festival)", y = "Frequency")

# 4.7 (Boxplots)
festivalBoxplot <- ggplot(festivalData, aes(gender, day1))
festivalBoxplot + geom_boxplot() + labs(x = "Gender", y = "Hygiene (Day 1 of Festival)")
festivalData <- festivalData[order(festivalData$day1),]
festivalData[festivalData$day1>20, c("day1")] <- 2.02

# 4.8
density <- ggplot(festivalData, aes(day1))
density + geom_density()

# 4.9 skipped




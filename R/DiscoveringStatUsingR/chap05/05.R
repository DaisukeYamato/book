# chap5 Exploring assumptions
setwd("/Users/yamato/programs/R/textbooks/DiscoveringStatUsingR/chap05")

# library
install.packages("car")
install.packages("ggplot2")
install.packages("pastecs")
install.packages("psych")

library(car); library(ggplot2); library(pastecs); library(psych);
library(Rcmdr)

# 5.5
dlf <- read.delim("DownloadFestival.dat", header=T)
dlf[dlf$day1>20, c("day1")] <- 2.02


hist.day1 <- ggplot(dlf, aes(day1)) + theme(legend.position = "none") + geom_histogram(aes(y = ..density..), colour = "black", fill = "white") + labs(x = "Hygiene score on day 1", y = "Density")

hist.day1 + stat_function(fun = dnorm, args = list(mean = mean(dlf$day1, na.rm=TRUE), sd = sd(dlf$day1, na.rm = TRUE) ), colour = "black", size = 1 )

qqplot.day1 <- qplot (sample = dlf$day1, stat="qq")
qqplot.day1

describe(dlf$day1)
stat.desc(dlf$day1, basic = FALSE, norm = TRUE)
#################################
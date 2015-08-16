#==== Program 1.4 (create histogram)
Data <- read.table("random1.txt");
N <- nrow(Data); x <- Data[,1];
# draw histogram
nclass <- ceiling(1 + log2(N));
cwidth <- diff(range(x) / nclass);
breaks <- min(x) + cwidth * 0:nclass
h.default <- hist(x, freq=FALSE, xlab="x",
	ylab = "relative frequency", main=" ");

###### Program 1.5
Data <- read.table("../dataset/PDA-F.txt", header=T);
N1 <- nrow(Data); x1 <- Data[,1];
Data <- read.table("../dataset/PDA-L.txt", header=T);
N2 <- nrow(Data); x2 <- Data[,1];
Data <- read.table("../dataset/PDA-S.txt", header=T);
N3 <- nrow(Data); x3 <- Data[,1];
# layout
par(mfrow=c(1,3), oma=c(0,0,0,0) + 0.1, mar = c(4, 4, 2, 2) + 0.1);
# F
nclass <- ceiling(1 + log2(N1));
cwidth <- diff(range(x1) / nclass)
breaks <- min(x1) + cwidth * 0:nclass;
h.default <- hist(x1, freq = FALSE, xlab = "x",
	ylab = "relative frequency", main ="(a)");
# L
nclass <- ceiling(1 + log2(N2));
cwidth <- diff(range(x2) / nclass)
breaks <- min(x2) + cwidth * 0:nclass;
h.default <- hist(x2, freq = FALSE, xlab = "x",
	ylab = "relative frequency", main ="(b)");
# S
nclass <- ceiling(1 + log2(N3));
cwidth <- diff(range(x3) / nclass)
breaks <- min(x3) + cwidth * 0:nclass;
h.default <- hist(x3, freq = FALSE, xlab = "x",
	ylab = "relative frequency", main ="(c)");

##### Program 1.6 (Time-series data plot)
par(mfrow=c(1,1))
Data <- read.table("../dataset/GDP.txt");
matplot(Data, type="l", xlab="time (year)", ylab="GDP");



# endline
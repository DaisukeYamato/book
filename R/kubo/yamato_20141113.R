# 
setwd("C:/Users/daisuke.yamato/work/book/kubo");
getwd();

# chap 2.
load("data/2/data.RData");

length(data);
summary(data);
table(data);
hist(data, breaks=seq(-0.5, 9.5, 1));

var(data);
sd(data);
sqrt(var(data));

y <- 0:9;
prob <- dpois(y, lambda = 3.56);

plot(y, prob, type="b", lty=2);

logL <- function(m) { sum(dpois(data, m, log = TRUE));}
lambda <- seq(2, 5, 0.1);
plot(lambda, sapply(lambda, logL), type = "l");

# chap 3.
d <- read.csv("data/3/data3a.csv");

plot(d$x, d$y, pch = c(21, 19)[d$f]);
legend("topleft", legend=c("C", "T"), pch=c(21,19));

fit <- glm(y~x, data=d, family = poisson);

logLik(fit);

plot(d$x, d$y, pch=c(21,19)[d$f]);
xx <- seq(min(d$x), max(d$x), length = 100);
lines(xx, exp(1.29 + 0.0757 * xx), lwd = 2);

fit.f <- glm(y ~ f, data = d, family = poisson);

# chap 4.
sum(log(dpois(d$y, lambda = d$y)));

fit.null <- glm(formula=y~1, family=poisson, data=d);
logLik(fit.null);

# chap 6.
d <- read.csv("data/6/data4a.csv");

logistic <- function(z) 1 / (1 + exp(-z))
z <- seq(-6, 6, 0.1);
plot(z, logistic(z), type="l");

glm(cbind(y, N-y) ~ x + f, data=d, family=binomial);

# chap 7.
d <- read.csv("data/7/data.csv");
d4 <- d[d$x == 4,];

library(glmmML);
glmmML(cbind(y, N - y) ~ x, data = d, family=binomial, cluster = id);

#################################################
# endline

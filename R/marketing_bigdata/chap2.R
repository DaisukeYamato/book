# chapter 2
library(ggplot2)
library(lattice)

set.seed(1)
n = 100
errors <- rnorm(n, mean=0, sd=0.3)
Z1_t    <- runif(n, min=0.5, max=1)
u_t    <- runif(n, min=0, max=1)
tmp    <- u_t <= 0.3 & Z1_t <= 0.8
gen_Z2 <- function(x){
	tmp <- function(y){
		if (y) {1} else {0}	
	}
	sapply(x,tmp)
}
Z2_t   <- gen_Z2(tmp)
log_y_t <- 0.5 - 2.5*log(Z1_t) + 0.8*Z2_t + errors
y_t <- exp(log_y_t)
#plot(Z1_t, y_t, xlab="discount factor", ylab="sales amount")
xyplot(y_t ~ Z1_t | Z2_t)
dataset.1 <- data.frame(y_t=y_t, Z1_t=Z1_t, Z2_t=Z2_t)
write.csv(dataset.1, file="data1.csv")

## --------------------------------------------------------------------
# analysis 1
data.1 <- read.csv("data1.csv")
model.1 <- lm(y_t ~ 1, data=data.1)
model.2 <- lm(y_t ~ Z1_t, data=data.1)
model.3 <- lm(y_t ~ Z1_t + Z2_t, data=data.1)
model.4 <- lm(y_t ~ log(Z1_t), data=data.1)
model.5 <- lm(y_t ~ log(Z1_t) + Z2_t, data=data.1)
model.6 <- lm(log(y_t) ~ 1, data=data.1)
model.7 <- lm(log(y_t) ~ Z1_t, data=data.1)
model.8 <- lm(log(y_t) ~ Z1_t + Z2_t, data=data.1)
model.9 <- lm(log(y_t) ~ log(Z1_t), data=data.1)
model.10 <-lm(log(y_t) ~ log(Z1_t) + Z2_t, data=data.1)

plot(x=Z1_t, y=y_t)
pred <- predict(model.10, data=data.1)
points(x=data.1$Z1_t, y=exp(pred), col="red")

plot(x=seq(nrow(data.1)), y=log(y_t), data=data.1, ylim=c(-2,4),type="l")
lines(x=as.integer(names(pred)), y=pred, col="red")
abline(h=0, lty=2)
lines(x=as.integer(names(pred)), y=pred-log(y_t), col="blue")
## --------------------------------------------------------------------
# data.2
set.seed(1)
price.1 <- runif(2000, min=0.7, max=1.0)
price.2 <- runif(2000, min=0.5, max=0.8)
price.3 <- runif(2000, min=0.7, max=0.9)

u_t <- runif(2000, min=0, max=1)
gen_disp <- function(u, price, thre){
	res = c()
	for (i in 1:length(u)){
		if (u[i]<=0.3 && price[i] <= thre) { res = c(res, 1) 
			} else { res = c(res,0)}		
	}
	return(res);
}
disp.1 <- gen_disp(u_t, price.1, 0.8)
disp.2 <- gen_disp(u_t, price.2, 0.7)
disp.3 <- gen_disp(u_t, price.3, 0.8)

V1 <-  0.5 - 3.0 * log(price.1) + 0.8 * disp.1
V2 <- -0.5 - 3.0 * log(price.2) + 0.8 * disp.2
V3 <-      - 3.0 * log(price.1) + 0.8 * disp.3
p1 <- exp(V1)/(exp(V1) + exp(V2) + exp(V3))
p2 <- exp(V2)/(exp(V1) + exp(V2) + exp(V3))
p3 <- exp(V3)/(exp(V1) + exp(V2) + exp(V3))

u_t <- runif(2000, min=0, max=1) # probability term 
gen_y_t <- function(u_t, p1, p2, p3){
	res=c()
	for (i in 1:length(u_t)){
		val = 0
		if ( 0 <= u_t[i] && u_t[i] <= p1[i]){
			val = 1
		} else if ( p1[i] < u_t[i] && u_t[i] <= p1[i] + p2[i]){
			val = 2
		} else {
			val = 3
		}
		res = c(res, val);
	}
	return(res)
}
y_t <- gen_y_t(u_t, p1, p2, p3)
data.2 <- data.frame(y_t=y_t
	, price.1=price.1, display.1 = disp.1, V1 = V1, p1 = p1
	, price.2=price.2, display.2 = disp.2, V2 = V2, p2 = p2
	, price.3=price.3, display.3 = disp.3, V3 = V2, p2 = p3
	)
data.2$person <- rep(1:100, length=2000)
write.csv(data.2, "data2.csv")
## --------------------------------------------------------------------
# analysis
library(mlogit)
data.2 <- read.csv("data2.csv")

# plot
par(mfrow=c(2,1))
data.2.sub1 <- subset(data.2, data.2$person==1)
plot(x=seq(20), data.2.sub1$y_t)
abline(h=1, lty=2); abline(h=2, lty=2); abline(h=3, lty=2);
plot(x=seq(20), data.2.sub1$price.1, type="l", lty=1, col="black", 
	ylim=c(0.0, 1.0))
lines(x=seq(20), y=data.2.sub1$price.2, lty=2, col="red")
lines(x=seq(20), y=data.2.sub1$price.3, lty=3, col="blue")
for (i in 0:10){ abline(h=0.1*i, lty=3); }

#model.1.1 <- lm(V1 ~ log(price.1) + display.1, data=data.2)
data.2.mlogit <- mlogit.data(data.2, shape="wide", choice="y_t")
model.1 <- mlogit(y_t ~ log())






## __endline__

# ====================================================
# chap2.R
#                              Author: Daisuke Yamato
# ----------------------------------------------------
# Explanation: 
# This file shows the following:
#   - basic usage
#   - graphics
#   - indexing data
#   - loading data
#   - Additional Graphical and Numerical Summaries
# Dataset is available from
#   http://www-bcf.usc.edu/~gareth/ISL/data.html
# ----------------------------------------------------
# Revisions:
# Jan/14/15 (Wed.)
#   1) Born.
# ====================================================
#ifndef __INTRO_STAT_LEARNING_CHAP_2__
#define __INTRO_STAT_LEARNING_CHAP_2__

# -------------------
# basic usage
# -------------------
# set env.
setwd("/Users/yamato/work/book/intro_stat_learning/R");
# show current working dir.
getwd();

# comments start by hash lines
# variable
x <- c(1, 3, 2, 5); # or x = c(1, 3, 2, 5);
x; # show x contents

x <- c(1, 6, 2);
y <- c(1, 4, 3);
length(x); # show length of x
length(y);

x + y; # vector calculations 

ls(); # list of all of the objects
rm(x, y); # remove x and y objects.
ls();

# if you want to remove all objects, call the below command:
# rm(list=ls());

# -------------------
# matrix
# -------------------
# for help, call ?matrix

x = matrix(data=c(1,2,3,4), nrow=2, ncol=2); # or x = matrix(c(1,2,3,4), 2, 2);
x;

# byrow
matrix(c(1,2,3,4), 2, 2, byrow=TRUE);
sqrt(x); # operate each matrix element
x^2;     # same comment as above 

# --------------
# random number
# --------------
x = rnorm(50); # 50 random variables (mean=0, sd=1, gauss dist.)
y = x + rnorm(50, mean=50, sd=.1);
cor(x, y); # correlation

# if you have to set seed to generate random number as a certain set of chains:
set.seed(1303);
rnorm(50);

# misc.
set.seed(3);
y = rnorm(100);
mean(y); # mean
var(y); # variace
sqrt(var(y)); # or sd(y);

# -----------------------------
# 2.3.2 Graphics
# -----------------------------
x = rnorm(100);
y = rnorm(100);
plot(x, y);
plot(x, y, xlab="this is the x-axis", ylab="this is the y-axis",
	main="Plot of X vs Y");
# pdf output
pdf("Figure.pdf");
plot(x, y, col="green");
dev.off(); # done for plotting

# sequential numbers
x = seq(1, 10); # or x = 1:10;
x;

# contour plot
y = x;
f = outer(x, y, function(x, y) cos(y)/(1+x^2));
contour(x, y, f);
contour(x, y, f, nlevels=45, add=T);
fa = (f - t(f))/2;
contour(x, y, fa, nlevels=15);

# image
image(x, y, fa);
persp(x, y, fa);
persp(x, y, fa, theta=30);
persp(x, y, fa, theta=30, phi=20);
persp(x, y, fa, theta=30, phi=70);
persp(x, y, fa, theta=30, phi=40);

# -----------------------------
# 2.3.3 Indexing Data
# -----------------------------
A = matrix(1:16, 4, 4);
A;

A[2, 3]; # row, column order
# misc.
A[c(1,3), c(2,4)];
A[1:3, 2:4];
A[1:2, ];
A[, 1:2];
A[1,];
A[-c(1,3), ];
dim(A); # dimension of A

# -----------------------------
# 2.3.4 Loading Data
# -----------------------------
Auto = read.table("Auto.data");
fix(Auto); # show data

Auto = read.table("Auto.data", header=T, na.strings="?");
fix(Auto);

Auto = read.csv("Auto.csv", header=T, na.strings="?");
fix(Auto);
dim(Auto);
Auto[1:4,];

# na treatment
Auto = na.omit(Auto);
dim(Auto);

names(Auto);

# -----------------------------
# 2.3.5 Additional Graphical and Numerical Summaries
# -----------------------------
plot(cylinders, mpg); # error

plot(Auto$cylinders, Auto$mpg);
attach(Auto);
plot(cylinders, mpg);

# convert categorical variable 
#   and boxplots
cylinders = as.factor(cylinders);

plot(cylinders, mpg);
plot(cylinders, mpg, col="red");
plot(cylinders, mpg, col="red", varwidth=T);
plot(cylinders, mpg, col="red", varwidth=T, horizontal=T);
plot(cylinders, mpg, col="red", varwidth=T, xlab="cylinders", 
	ylab="mpg");

# histogram
hist(mpg);
hist(mpg, col=2);
hist(mpg, col=2, breaks=15);

# scatter plots by pairs
pairs(Auto);
pairs(~ mpg + displacement + horsepower + weight + acceleration, Auto);

# simple scatter
plot(horsepower, mpg);
identify(horsepower, mpg, name);

# summary
summary(Auto);

summary(mpg);

# -----------------------------------------------------
#endif
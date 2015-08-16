# 
setwd("C:/Users/daisuke.yamato/work/book/kubo");
getwd();

#
source("data/9/R2WBwrapper.R");

# chap 9.
load("data/9/d.RData");
clear.data.param(); # preparation for data, initialization

# data setting
set.data("N", nrow(d)); # sample size
set.data("Y", d$y); # obj
set.data("X", d$x); # exp
set.data("Mean.X", mean(d$x)); # X[i] sample mean

# parameter initialization
set.param("beta1", 0);
set.param("beta2", 0);

# WinBUGWS calling
post.bugs <- call.bugs(
    file = "model.bug.txt",
    n.iter = 1600, n.burnin = 100, n.thin = 3
);


#################################################
# endline

######################################################################
######################################################################
# 
setwd("~/work/101_book/R_series/3.bayes");

# data
data <- read.table("r3/dataset/GDP.txt");

# N, data into y convert log
N <- nrow(data); y <- log(data[,1]);

# set option
liby <- 1e4; p <- 4;

# Kalman Filter matrix setting (trend infering & standard seasonality)
FGHset1 <- function(k, p){
    if (p == 0){
        m <- k; G <- matrix(0, m, 1);
    } else {
        m <- k + p - 1;
        if (k == 0){
            G <- matrix(0, m, 1);
        } else {
            G <- matrix(0, m, 2);
        }
    }
    F <- matrix(0, m, m); H <- matrix(0, 1, m); NS <- 0; L <- 0;
    if (k > 0){
        NS <- NS + 1; G[LS+1,NS] <- 1; H[1,LS+1] <- 1;
        if (k == 1){
            F[1,1] <- 1;
        }
        if (k == 2){
            F[1,1] <- 2; F[1,2] <- -1, F[2,1] <- 1;
        }
        if (k == 3){
            F[1,1] <- 3; F[1,2] <- -3; F[1,3] <- 1;
            F[2,1] <- 1; F[3,2] <- 1;
        }
        LS <- LS + k;
    }
    if (p > 0) {
        NS <- NS + 1; G[LS+1, NS] <- 1; H[1,LS+1] <- 1;
        for (i in 1:(p-1)){
            F[LS+1, LS+i] <- -1;
        }
        if (p > 2){
            for (i in 1:(p-2)){
                F[LS+i+1, LS+i] <- 1;
            }
        }
        LS <- LS + p - 1;
    }
    return(list(m=m, MatF=F, MatG=G, MatH=H));
}

#=====================================================================
# Kalman Filter
KF <- function(y, XFO, VFO, F, H, G, Q, R, limy, ISW, OSW, m, N){
    if (OSW == 1){
        XPS <- matrix(0, m, N); XFS <- matrix(0, m, N);
        VPS <- array(dim = c(m, m, N)); VFS <- array(dim=c(m, m, N));
    }
    XF <- XFO; VF <- VFO; NSUM <- 0; SIG2 <- 0; LDET <- 0;
    for (n in 1:N){
        # prediction 1-period
        XP <- F %*% XF;
        VP <- F %*% VF %*% t(F) + G %*% Q %*% t(G);
        # filtering
        if (y[n] < limy){
            NSUM <- NSUM + 1;
            
        }
    }
}


######################################################################

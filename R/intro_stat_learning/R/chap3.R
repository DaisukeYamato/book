# ====================================================
# chap3.R
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

# set env.
setwd("/Users/yamato/work/book/intro_stat_learning/R");
# show current working dir.
getwd();

adv <- read.csv("Advertising.csv");


library(sem) #CuÌÇÝÝ

#f[^ÌÇÝÝ#
co <- readMoments(
  diag=TRUE, 
  names=c(
    "y01", "y02", "y03", "y04", "y05", "y06", 
    "y07", "y08", "y09", "y10"
  )
)
1
0.836 1
0.788 0.841 1
0.532 0.569 0.646 1
0.459 0.420 0.378 0.318 1
0.597 0.625 0.714 0.597 0.482 1
0.608 0.639 0.681 0.604 0.454 0.708 1
0.762 0.790 0.821 0.645 0.343 0.662 0.647 1
0.629 0.597 0.666 0.570 0.271 0.563 0.588 0.741 1
0.660 0.581 0.663 0.472 0.436 0.626 0.612 0.694 0.736 1




#fÌì¬#

#ªèûö®
model <- specifyModel()
  moi¿ -> y01, NA,  1@      #ªèûö®, ¯Ê«§ñÌ½ßWðPÉÅè
  moi¿ -> y02, b12, NA
  moi¿ -> y03, b13, NA
  moi¿ -> y04, b14, NA
  ÚqúÒ -> y05, NA,  1
  ÚqúÒ -> y06, b22, NA
  ÚqúÒ -> y07, b23, NA
  Úq« -> y08, NA, 1
  Úq« -> y09, b32, NA
  Úq« -> y10, b33, NA
  y01 <-> y01, e01, NA@@@      #ªèûö®ÌªUÝè
  y02 <-> y02, e02, NA
  y03 <-> y03, e03, NA
  y04 <-> y04, e04, NA
  y05 <-> y05, e05, NA
  y06 <-> y06, e06, NA
  y07 <-> y07, e07, NA
  y08 <-> y08, e08, NA
  y09 <-> y09, e09, NA
  y10 <-> y10, e10, NA
  moi¿     -> Úq«,  b1,NA    @@@#\¢ûö®
  ÚqúÒ     -> Úq«,  b2,NA
  ÚqúÒ     -> moi¿,  b4,NA
  moi¿    <-> moi¿ , NA, 1            #\¢ûö®ÌªUÝè
  ÚqúÒ    <-> ÚqúÒ , NA, 1
  Úq«    <-> Úq« , NA, 1

#ªÍÆoÍ#
result <- sem(model,co,N=100) #f,ÖW, TvÌÀÑ
summary(result,
        fit.indices = c("GFI", "AGFI", "RMSEA","NFI", "NNFI",
                        "CFI", "RNI", "IFI", "SRMR", "AIC",
                        "AICc", "BIC", "CAIC"))
stdCoef(result)@@ #WðÌ\¦

#pX}Ìì¬#
pathDiagram(result, out.file="csi100-10.txt", ignore.double=FALSE, 
edge.labels="values", digits=3,
node.font=c("C:/WINDOWS/Fonts/msgothic.ttc",10)) 

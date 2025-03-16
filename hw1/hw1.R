###########################################################
# Filename: hw1.R
# Course  : 113-2 Statistics and Machine Learning, HW1
# Author  : Potumas Liu 
# Date    : 2025/03/16
###########################################################

par(mar = c(5, 4, 1, 1))
par(mgp = c(3, 1, 0))

# (3)
pdf("3.pdf")

plot(0, 0, xlim = c(-6, 6), ylim = c(-6, 6), bty="l",
     type = "n", xlab = expression(X[1]), ylab = "", 
     asp = 1, las=1, cex.axis=1.5, cex.lab=1.5)
abline(h=0, lty=3, col="gray30")
abline(v=0, lty=3, col="gray30")
mtext(expression("X"[2]), side = 2, line = 2.5, las = 1, cex = 1.5)

# the original model
arrows(0, 0, 3, 3, col = "black", lwd=1.5, length=0.2)
abline(a=0, b=-1, lwd=2, col="black")
text(4, 2, expression(w[t]=="(3, 3)"), col = "black", cex = 1.5)  # Add text at (5,5)
text(2, -3, expression(h[t](x)), col = "black", cex = 1.5)

# the misclassified sample point
points(x=-4, y=3, col="red", pch=16, cex=1.5)
arrows(0, 0, -4, 3, col = "red", lwd=1.5, length=0.2)
text(-4.5, 1, expression(paste(y[n(t)], "=+1,", x[n(t)], "=(-4,3)", sep="")), col = "red", cex = 1.3)  

# the updated model
arrows(0, 0, -1, 6, col = "blue", lwd=1.5, length=0.2)
abline(a=0, b=(1/6), lwd=2, col="blue")
text(1.3, 5, expression(w[t+1]=="(-1,6)"), col = "blue", cex = 1.5)
text(4.5, 0, expression(h[t+1](x)), col = "blue", cex = 1.5)

dev.off()



# (4)
# 4.1: one sample is corrected 
pdf("4.1.pdf")

plot(0, 0, xlim = c(-10, 10), ylim = c(-10, 10), bty="l",
     type = "n", xlab = expression(X[1]), ylab = "", 
     asp = 1, las=1, cex.axis=1.5, cex.lab=1.5)
abline(h=0, lty=3, col="gray30")
abline(v=0, lty=3, col="gray30")
mtext(expression("X"[2]), side = 2, line = 2.5, las = 1, cex = 1.5)

# the original model
arrows(0, 0, 3, 3, col = "black", lwd=1.5, length=0.2)
abline(a=0, b=-1, lwd=2, col="black")
text(6, 3, expression(w[t]=="(3, 3)"), col = "black", cex = 1.5)
text(7, -5, expression(h[t](x)), col = "black", cex = 1.5) 

# the misclassified sample point 1
points(x=-4, y=3, col="red", pch=16, cex=1.5)
arrows(0, 0, -4, 3, col = "red", lwd=1.5, length=0.2)
text(-7, 0.5, expression(paste(y[n[1](t)], "=+1,", x[n[1](t)], "=(-4,3)", sep="")), col = "red", cex = 1.3)  

# the misclassified sample point 2
points(x=2, y=-4, col="purple", pch=16, cex=1.5)
arrows(0, 0, 2, -4, col = "purple", lwd=1.5, length=0.2)
text(0, -6, expression(paste(y[n[2](t)], "=+1,", x[n[2](t)], "=(2,-4)", sep="")), col = "purple", cex = 1.3)  

# the updated model
arrows(0, 0, 1, 2, col = "blue", lwd=1.5, length=0.2)
abline(a=0, b=(-1/2), lwd=2, col="blue")
text(0, 4, expression(w[t+1]=="(1,2)"), col = "blue", cex = 1.5)
text(5, -1, expression(h[t+1](x)), col = "blue", cex = 1.5)

dev.off()


# 4.2: both samples are corrected 
pdf("4.2.pdf")

plot(0, 0, xlim = c(-10, 10), ylim = c(-10, 10), bty="l",
     type = "n", xlab = expression(X[1]), ylab = "", 
     asp = 1, las=1, cex.axis=1.5, cex.lab=1.5)
abline(h=0, lty=3, col="gray30")
abline(v=0, lty=3, col="gray30")
mtext(expression("X"[2]), side = 2, line = 2.5, las = 1, cex = 1.5)

# the original model
arrows(0, 0, 3, 3, col = "black", lwd=1.5, length=0.2)
abline(a=0, b=-1, lwd=2, col="black")
text(6, 3.5, expression(w[t]=="(3, 3)"), col = "black", cex = 1.5)  
text(7, -5, expression(h[t](x)), col = "black", cex = 1.5)  

# the misclassified sample point 1
points(x=-4, y=3, col="red", pch=16, cex=1.5)
arrows(0, 0, -4, 3, col = "red", lwd=1.5, length=0.2)
text(-7, 0.5, expression(paste(y[n[1](t)], "=+1,", x[n[1](t)], "=(-4,3)", sep="")), col = "red", cex = 1.3)  

# the misclassified sample point 2
points(x=5, y=2, col="purple", pch=16, cex=1.5)
arrows(0, 0, 5, 2, col = "purple", lwd=1.5, length=0.2)
text(8, 0.5, expression(paste(y[n[2](t)], "=-1,", x[n[2](t)], "=(5,2)", sep="")), col = "purple", cex = 1.3)  

# the updated model
arrows(0, 0, -6, 4, col = "blue", lwd=1.5, length=0.2)
abline(a=0, b=(3/2), lwd=2, col="blue")
text(-8.5, 5, expression(w[t+1]=="(-6,4)"), col = "blue", cex = 1.5)
text(2, 7, expression(h[t+1](x)), col = "blue", cex = 1.5)

dev.off()



# 4.3: no samples are corrected 
pdf("4.3.pdf")

plot(0, 0, xlim = c(-10, 10), ylim = c(-10, 10), bty="l",
     type = "n", xlab = expression(X[1]), ylab = "", 
     asp = 1, las=1, cex.axis=1.5, cex.lab=1.5)
abline(h=0, lty=3, col="gray30")
abline(v=0, lty=3, col="gray30")
mtext(expression("X"[2]), side = 2, line = 2.5, las = 1, cex = 1.5)

# the original model
arrows(0, 0, 3, 3, col = "black", lwd=1.5, length=0.2)
abline(a=0, b=-1, lwd=2, col="black")
text(6, 3, expression(w[t]=="(3, 3)"), col = "black", cex = 1.5)
text(7, -5, expression(h[t](x)), col = "black", cex = 1.5) 

# the misclassified sample point 1
points(x=-4, y=3, col="red", pch=16, cex=1.5)
arrows(0, 0, -4, 3, col = "red", lwd=1.5, length=0.2)
text(-7, 0.5, expression(paste(y[n[1](t)], "=+1,", x[n[1](t)], "=(-4,3)", sep="")), col = "red", cex = 1.3)  

# the misclassified sample point 2
points(x=2.5, y=-5, col="purple", pch=16, cex=1.5)
arrows(0, 0, 2.5, -5, col = "purple", lwd=1.5, length=0.2)
text(-2, -6, expression(paste(y[n[2](t)], "=+1,", x[n[2](t)], "=(2.5,-5)", sep="")), col = "purple", cex = 1.3)  

# the updated model
arrows(0, 0, 1.5, 1, col = "blue", lwd=1.5, length=0.2)
abline(a=0, b=(-3/2), lwd=2, col="blue")
text(5, 0, expression(w[t+1]=="(1.5,1)"), col = "blue", cex = 1.5)
text(-1, 5, expression(h[t+1](x)), col = "blue", cex = 1.5)

dev.off()

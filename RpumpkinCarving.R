# ------------------------------------------------------------------#
# --------------------- Pumpkin Carving with R ---------------------#
# --------------------------- Jeff Wagner --------------------------#
# ------------------------ October 20, 2020 ------------------------#
# -- Adapted from the BMSC Blog (https://bmscblog.wordpress.com/) --#
# ------------------------------------------------------------------#


par(bg=1, mar=c(0,0,0,0))
plot(c(0,0), cex=0, xlim=c(-1,1), ylim=c(1.5,0))
X <- runif(500,-1,1)
Y <- runif(500,0,1)
M <- rchisq(500,1)/20
points(Y~X, cex=M, pch=19, col= "white") # let's make some stars to set the mood
points(0,1.1, pch=19, col= "orange",cex=20) # now make our pumpkin 
polygon(c(-0.03, -0.08, -0.02, 0.03), c(0.86, 0.76, 0.78, 0.86),  # don't forget the stem!
        col= "darkgreen",
        border= "darkgreen",
        lwd=3, lty= "solid")

# Use the mouse to carve the eyes and nose, clicking at 3 points for each polygon
for (i in 1:3){
  polygon(locator(3),col=7)
}

# Now carve the mouth, clicking at 15 points (you can adjust the number of points inside the locator() function below)
polygon(locator(15), col = 7)

# Congratulations, you just carved your first virtual pumpkin with R! You're being a nerd for Halloween!

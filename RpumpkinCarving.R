# ------------------------------------------------------------------#
# --------------------- Pumpkin Carving with R ---------------------#
# --------------------------- Jeff Wagner --------------------------#
# ------------------------ October 20, 2020 ------------------------#
# -- Adapted from the BMSC Blog (https://bmscblog.wordpress.com/) --#
# ------------------------------------------------------------------#



# Set the background and build our pumpkin
dev.new(width=8,height=8,noRStudioGD = TRUE)
par(bg=1, mar=c(0,0,0,0))
plot(c(0,0), cex=0, xlim=c(-1,1), ylim=c(1.5,0))
X <- runif(500,-1,1)
Y <- runif(500,0,1)
M <- rchisq(500,1)/20
points(Y~X, cex=M, pch=19, col= "white") # let's make some stars to set the mood
points(0,1, pch=19, col= "orange",cex=50) # now make our pumpkin 
polygon(c(-0.07, -0.08, -0.01, 0.07), c(0.65, 0.45, 0.45, 0.66),  # don't forget the stem!
        col= "darkgreen",
        border= "darkgreen",
        lwd=3, lty= "solid")

## NOTE: You can change the number of points used for each polygon by adjusting the value within the locator() function ##


# Use the mouse to carve the eyes, clicking at 4 points for each polygon
for (i in 1:2){
  polygon(locator(4),col=7)
}

# Then, carve the nose, clicking at 3 points
polygon(locator(3), col = 7)

# Finally, carve the mouth, clicking at 10 points
polygon(locator(10), col = 7)

# Congratulations, you just carved your first virtual pumpkin with R! You're being a nerd for Halloween!

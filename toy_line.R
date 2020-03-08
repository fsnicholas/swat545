a <- 2
b <- -3
sig_sq <- 0.5
x <- runif(40)
y <- a + b * x + rnorm(40, sd = sqrt(sig_sq))
(avg_x <- mean(x))
write(avg_x, "avg_x.txt")
# set margins to print without error
# Error in plot.new() : figure margins too large
par(mar=c(1,1,1,1))
plot(x,y)
abline(a, b, col = "purple")
dev.print(pdf, "toy_line_plot.pdf")
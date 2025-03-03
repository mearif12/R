# Parameters
k <- 5  
N_sim <- 1000  

# Generate data
set.seed(123)  
chi2_data <- rchisq(N_sim, df = k)  

# Mean and variance
mean_chi2 <- mean(chi2_data)  
var_chi2 <- var(chi2_data)  
cat("Mean:", mean_chi2, "\nVariance:", var_chi2)  

# Graphs
par(mfrow = c(1, 3))  
hist(chi2_data, probability = TRUE, col = "lightblue", main = "Chi-Squared Histogram", xlab = "Value")  
curve(dchisq(x, df = k), add = TRUE, col = "red", lwd = 2)  
plot(density(chi2_data), col = "blue", main = "Density Plot")  
curve(dchisq(x, df = k), add = TRUE, col = "red", lwd = 2)  
qqplot(qchisq(ppoints(N_sim), df = k), chi2_data, main = "Q-Q Plot")  
abline(0, 1, col = "red")  

# Parameters
mu <- 5  
sigma <- 2  
n <- 30  
N_sim <- 1000  

# Storage
unbiased_vars <- numeric(N_sim)  
biased_vars <- numeric(N_sim)  

# Simulation
set.seed(123)  
for (i in 1:N_sim) {
  data <- rnorm(n, mean = mu, sd = sigma)  
  unbiased_vars[i] <- var(data)  
  biased_vars[i] <- sum((data - mean(data))^2) / n  
}  

# Plots
par(mfrow = c(1, 2))  
hist(unbiased_vars, col = "lightblue", main = "Unbiased Variance", xlab = "Variance")  
abline(v = sigma^2, col = "red", lwd = 2)  
hist(biased_vars, col = "lightgreen", main = "Biased Variance", xlab = "Variance")  
abline(v = sigma^2, col = "red", lwd = 2)  

# Parameters
mu <- 5  
sigma <- 2  
n <- 30  
N_sim <- 1000  

# Initialize vectors
sample_means <- numeric(N_sim)  
sample_vars <- numeric(N_sim)  

# Simulation
set.seed(123)  
for (i in 1:N_sim) {
  data <- rnorm(n, mean = mu, sd = sigma)  
  sample_means[i] <- mean(data)  
  sample_vars[i] <- var(data)  
}  

# Correlation
correlation <- cor(sample_means, sample_vars)  
print(paste("Correlation:", correlation))  

# Graphs
par(mfrow = c(2, 2))  
hist(sample_means, col = "lightblue", main = "Sample Means", xlab = "Mean")  
hist(sample_vars, col = "lightgreen", main = "Sample Variances", xlab = "Variance")  
plot(sample_means, sample_vars, col = "blue", main = "Mean vs Variance", xlab = "Mean", ylab = "Variance")  
qqnorm(sample_means, main = "Q-Q Plot of Sample Means")  
qqline(sample_means, col = "red") 

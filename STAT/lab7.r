# Parameters
mu0 <- 5  
mu1 <- 6  
sigma <- 2  
n <- 30  
alpha <- 0.05  

# Critical value
critical_value <- qnorm(1 - alpha, mean = mu0, sd = sigma / sqrt(n))

# Generate sample means under H₀ and H₁
set.seed(123)
sample_mean_H0 <- mean(rnorm(n, mu0, sigma))
sample_mean_H1 <- mean(rnorm(n, mu1, sigma))

# Decisions
decision_H0 <- ifelse(sample_mean_H0 > critical_value, "Reject H₀", "Fail to reject H₀")
decision_H1 <- ifelse(sample_mean_H1 > critical_value, "Reject H₀", "Fail to reject H₀")

# Output
cat("Critical Value:", critical_value, "\n")
cat("Decision under H₀:", decision_H0, "\n")
cat("Decision under H₁:", decision_H1, "\n")

# Plot density under H₀
par(mfrow = c(1, 2))

# Plot for H₀
plot(x_vals, dnorm(x_vals, mean = mu0, sd = sigma / sqrt(n)), type = "l", col = "blue", lwd = 2,
     main = "Density under H₀", xlab = "Sample Mean", ylab = "Density")
abline(v = critical_value, col = "green", lwd = 2, lty = 2)

# Plot for H₁
plot(x_vals, dnorm(x_vals, mean = mu1, sd = sigma / sqrt(n)), type = "l", col = "red", lwd = 2,
     main = "Density under H₁", xlab = "Sample Mean", ylab = "Density")
abline(v = critical_value, col = "green", lwd = 2, lty = 2)

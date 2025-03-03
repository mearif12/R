# Parameters
mu0 <- 5  # Null hypothesis mean
mu1 <- 6  # True population mean
sigma <- 2  # Population standard deviation
n <- 30  # Sample size
alpha <- 0.05  # Significance level

# Step 1: State hypotheses
cat("H₀: μ =", mu0, "\nH₁: μ >", mu0, "\n")

# Step 2: Significance level
cat("Significance Level (α):", alpha, "\n")

# Step 3: Test statistic
set.seed(123)
sample_data <- rnorm(n, mu1, sigma)
t_stat <- (mean(sample_data) - mu0) / (sd(sample_data) / sqrt(n))

# Step 4: Critical value & p-value
critical_value <- qt(1 - alpha, df = n - 1)
p_value <- pt(t_stat, df = n - 1, lower.tail = FALSE)

# Step 5: Decision
decision <- ifelse(t_stat > critical_value, "Reject H₀", "Fail to reject H₀")

# Output
cat("Test Statistic:", t_stat, "\n")
cat("Critical Value:", critical_value, "\n")
cat("P-value:", p_value, "\n")
cat("Decision:", decision, "\n")

# Graphical Output
par(mfrow = c(1, 2))

# Histogram with critical region
hist(sample_data, breaks = 30, col = "lightblue", main = "Sample Data", xlab = "Value", border = "white")
abline(v = mu0, col = "red", lwd = 2) 
abline(v = mean(sample_data), col = "blue", lwd = 2)  
abline(v = critical_value, col = "green", lty = 2)  

# Density plot with critical region
plot(density(sample_data), col = "blue", lwd = 2, main = "Density Plot", xlab = "Value")
abline(v = critical_value, col = "red", lty = 2) 

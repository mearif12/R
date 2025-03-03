# Parameters
mu0 <- 5  # Null hypothesis mean
mu1 <- 6  # Alternative hypothesis mean
sigma <- 2  # Population standard deviation
n <- 30  # Sample size
alpha <- 0.05  # Significance level
N_sim <- 1000  # Number of simulations

# Simulation
set.seed(123)
power_t <- sum(replicate(N_sim, t.test(rnorm(n, mu1, sigma), mu = mu0, alternative = "greater")$p.value < alpha)) / N_sim
power_z <- sum(replicate(N_sim, (mean(rnorm(n, mu1, sigma)) - mu0) / (sigma / sqrt(n)) > qnorm(1 - alpha))) / N_sim

# Output
cat("Power of t-test:", power_t, "\n")
cat("Power of z-test:", power_z, "\n")

# Graphical Output
par(mfrow = c(1, 2))

# Power comparison plot
barplot(c(power_t, power_z), names.arg = c("t-test", "z-test"), col = c("lightblue", "lightgreen"), main = "Power Comparison", ylab = "Power")

# Power vs. Sample Size plot
sample_sizes <- seq(10, 100, by = 10)
power_t_sizes <- sapply(sample_sizes, function(n) sum(replicate(N_sim, t.test(rnorm(n, mu1, sigma), mu = mu0, alternative = "greater")$p.value < alpha)) / N_sim)
power_z_sizes <- sapply(sample_sizes, function(n) sum(replicate(N_sim, (mean(rnorm(n, mu1, sigma)) - mu0) / (sigma / sqrt(n)) > qnorm(1 - alpha))) / N_sim)

plot(sample_sizes, power_t_sizes, type = "b", col = "blue", ylim = c(0, 1), main = "Power vs. Sample Size", xlab = "Sample Size", ylab = "Power", pch = 19)
lines(sample_sizes, power_z_sizes, type = "b", col = "green", pch = 19)
legend("bottomright", legend = c("t-test", "z-test"), fill = c("blue", "green"))

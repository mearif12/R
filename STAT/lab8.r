# Data generation
set.seed(123)
group1 <- rnorm(20, mean = 5, sd = 2)
group2 <- rnorm(20, mean = 7, sd = 2)

# Wilcoxon test
wilcox_result <- wilcox.test(group1, group2)

# Output
cat("Wilcoxon P-value:", wilcox_result$p.value, "\n")

# Plots
par(mfrow = c(1, 2))
boxplot(list(Group1 = group1, Group2 = group2), col = c("lightblue", "lightgreen"), main = "Boxplot of Groups")
plot(density(group1), col = "blue", main = "Density Plots")
lines(density(group2), col = "green")
legend("topright", legend = c("Group 1", "Group 2"), col = c("blue", "green"), lwd = 2)

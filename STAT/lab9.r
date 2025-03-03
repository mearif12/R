# Generate sample data for three groups
set.seed(123)
group1 <- rnorm(30, mean = 5, sd = 2)
group2 <- rnorm(30, mean = 5, sd = 3)
group3 <- rnorm(30, mean = 5, sd = 4)

# Perform Bartlett's test
bartlett_test_result <- bartlett.test(list(group1, group2, group3))

# Output
cat("Bartlett's Test Statistic:", bartlett_test_result$statistic, "\n")
cat("P-value:", bartlett_test_result$p.value, "\n")

# Visualizations
par(mfrow = c(1, 2))
boxplot(list(Group1 = group1, Group2 = group2, Group3 = group3),
        col = c("lightblue", "lightgreen", "lightcoral"), main = "Group Variances")
plot(density(group1), col = "blue", main = "Density Comparison", xlim = range(c(group1, group2, group3)))
lines(density(group2), col = "green")
lines(density(group3), col = "red")
legend("topright", legend = c("Group 1", "Group 2", "Group 3"), col = c("blue", "green", "red"), lwd = 2)

# Create contingency table
data <- matrix(c(10, 5, 2, 8), nrow = 2, byrow = TRUE)
rownames(data) <- c("Group A", "Group B")
colnames(data) <- c("Success", "Failure")

# Fisher's exact test
fisher_result <- fisher.test(data)

# Output
cat("Fisher's Exact Test P-value:", fisher_result$p.value, "\n")

# Plots
par(mfrow = c(1, 2))
barplot(data, beside = TRUE, col = c("lightblue", "lightgreen"), main = "Contingency Table")
legend("topright",legend=c("Group 1","Group 2"),fill= c("lightblue","lightgreen"))
mosaicplot(data, main = "Mosaic Plot", color = TRUE)

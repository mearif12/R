# Parameters
df1 <- 5  
df2 <- 10  
N_sim <- 1000  

# Data generation
set.seed(123)  
chi2_1 <- rchisq(N_sim, df = df1)  
chi2_2 <- rchisq(N_sim, df = df2)  
f_data <- (chi2_1 / df1) / (chi2_2 / df2)  

# Graphs
par(mfrow = c(2, 2))  
hist(f_data, probability = TRUE, col = "lightblue", main = "F-Distribution", xlab = "Value")  
curve(df(x, df1, df2), add = TRUE, col = "red")  
plot(density(f_data), col = "blue", main = "Density Plot")  
curve(df(x, df1, df2), add = TRUE, col = "red")  
qqplot(qf(ppoints(N_sim), df1, df2), f_data, main = "Q-Q Plot")  
abline(0, 1, col = "red")  
boxplot(f_data, col = "lightgreen", main = "Boxplot")

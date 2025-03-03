# Parameters
n <- 10  
N_sim <- 1000  

# Data generation
set.seed(123)  
t_data <- rt(N_sim, df = n - 1)  
normal_data <- rnorm(N_sim)  

# Graphs
par(mfrow = c(2, 2))  
hist(t_data, probability = TRUE, col = "lightblue", main = "t-Distribution", xlab = "Value")  
curve(dt(x, df = n - 1), add = TRUE, col = "red")  
hist(normal_data, probability = TRUE, col = "lightgreen", main = "Normal Distribution", xlab = "Value")  
curve(dnorm(x), add = TRUE, col = "blue")  
plot(density(t_data), col = "red", main = "Density Comparison")  
lines(density(normal_data), col = "blue")  
legend("topright", legend = c("t-Distribution", "Normal"), col = c("red", "blue"), lwd = 2)  
qqplot(qt(ppoints(N_sim), df = n - 1), t_data, main = "Q-Q Plot for t")  
abline(0, 1, col = "blue")

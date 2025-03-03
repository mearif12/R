# Binomial MLE
n_binom <- 20  
p_true <- 0.6  
data_binom <- rbinom(100, n_binom, p_true)  
p_mle <- mean(data_binom) / n_binom  

# Poisson MLE
lambda_true <- 3  
data_pois <- rpois(100, lambda_true)  
lambda_mle <- mean(data_pois)  

# Normal MLE
mu_true <- 5  
sigma_true <- 2  
data_norm <- rnorm(100, mu_true, sigma_true)  
mu_mle <- mean(data_norm)  
sigma_mle <- sqrt(mean((data_norm - mu_mle)^2))  

# Output
cat("Binomial p MLE:", p_mle, "\nPoisson λ MLE:", lambda_mle, "\nNormal μ MLE:", mu_mle, "\nNormal σ MLE:", sigma_mle, "\n") 

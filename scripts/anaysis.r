#simulate hourly call counts over 30 days.

set.seed(123)

# Simulate 24 hours * 30 days = 720 observations
calls_per_hour <- rpois(720, lambda = 5)

data <- data.frame(
  hour = rep(0:23, 30),
  calls = calls_per_hour
)

head(data)

******************************************************************************
 ********** Exploratory Data Analysis (EDA)**************************
  
#Summary statistics
mean(data$calls)
var(data$calls)


# Compare mean vs variance:
  #If similar → Poisson assumption is valid

********************Distribution Visualization*************************
  hist(data$calls, main="Distribution of Calls per Hour", xlab="Calls", col="lightblue")




***************poisson Modeling**********************

#We estimate λ (lambda):
  
  lambda_est <- mean(data$calls)
lambda_est

#This becomes your model parameter.

*****************************Probability Example*****************************

#What is the probability of receiving exactly 8 calls?
  
  dpois(8, lambda = lambda_est)

******************Monte Carlo Simulation**************************

#Simulate future call volumes:
  
  sim_calls <- rpois(10000, lambda_est)

hist(sim_calls, main="Simulated Call Distribution", col="lightgreen")
mean(sim_calls)

#This helps predict future demand variability.



**********************Staffing Decision Example****************************************

#Assume:
# 1 agent can handle 6 calls/hour
#You want to avoid overload
max_calls <- quantile(sim_calls, 0.95)

agents_needed <- ceiling(max_calls / 6)
agents_needed

******************Binomial Extension (Service Success Rate)*********************

#Assume:
#Each call has an 85% chance of being resolved
n_calls <- 20
p_success <- 0.85

resolved_calls <- rbinom(1000, n_calls, p_success)

mean(resolved_calls)

# Helps evaluate service efficiency


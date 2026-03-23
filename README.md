#  Call Center Demand Analysis Using Poisson & Monte Carlo Simulation

##  Overview
This project analyzes and simulates call center demand using statistical methods. It applies Poisson distribution modeling and Monte Carlo simulation to understand call patterns and optimize staffing decisions.

---

##  Objectives
- Model hourly call arrivals using Poisson distribution  
- Estimate average call volume (λ)  
- Simulate future demand using Monte Carlo methods  
- Analyze variability and peak demand  
- Support staffing decisions using data-driven insights  

---

## Tools & Technologies
- R (base R + stats)
- ggplot2 (visualization)
- Probability distributions:
  - Poisson
  - Binomial
  - Monte Carlo simulation

---

##  Dataset
The dataset is simulated to represent real-world hourly call volumes over a period of time.

- Total observations: 720 (24 hours × 30 days)
- Variable:
  - `calls`: Number of calls received per hour

---

##  Methodology

### 1. Data Simulation
Hourly call counts were generated using a Poisson distribution with λ = 5.

### 2. Exploratory Data Analysis
- Mean and variance comparison
- Distribution visualization

### 3. Poisson Modeling
- Estimated λ from data
- Computed probabilities for specific call counts

### 4. Monte Carlo Simulation
- Simulated 10,000 future scenarios
- Estimated demand distribution

### 5. Staffing Analysis
- Used quantiles to estimate peak demand
- Derived number of agents required

---

##  Visualizations

### Distribution of Calls
![Calls Histogram](outputs/hist_calls.png)

### Simulated Call Distribution
![Simulation](outputs/poisson_simulation.png)

---

##  Key Insights
- The mean number of calls closely matches the variance, validating the Poisson assumption  
- Call arrivals follow a predictable random pattern  
- Peak demand can be estimated using quantiles (e.g., 95th percentile)  
- Monte Carlo simulation helps model uncertainty in demand  
- Staffing decisions can be optimized using simulated workloads  

---

##  Business Impact
- Improved workforce planning  
- Reduced risk of understaffing  
- Data-driven operational decisions  
- Scalable approach for demand forecasting  

---

##  How to Run

1. Clone the repository:
```bash
git clone https://github.com/your-username/call-center-demand-analysis.git

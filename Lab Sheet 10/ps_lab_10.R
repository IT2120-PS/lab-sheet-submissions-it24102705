setwd("C:/Users/Asanka/Desktop/IT24102705ps Lab10")

# Observed number of purchases for each snack type
observed <- c(120, 95, 85, 100)

# Expected probabilities (equal for all)
prob <- c(0.25, 0.25, 0.25, 0.25)

# Perform Chi-square goodness-of-fit test
chisq.test(x = observed, p = prob)

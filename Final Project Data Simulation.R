library(MASS)
matrix_data <- c(1.23, -.17, -.51, -.10, -.17, .65, .479, .309, -.51, .479,
                 1.32, .406, -.10, .309, .406, .79);
covmat <- matrix(data = matrix_data, nrow = 4, ncol = 4, byrow = TRUE)
rownames(covmat) <- c("Turnover Intention", "Job Satisfaction", "POS", "PSS")
colnames(covmat) <- c("Turnover Intention", "Job Satisfaction", "POS", "PSS")
show(covmat)
means <- c(2.6, 3.4, 3.8, 3.67)
datasim <- mvrnorm(n = 250, mu = means, Sigma = covmat)
show(datasim)

#!/bin/env Rscript

# libraries
library(scales)

# functions
quantile_names <- function(x, n = 4) {

  # ordinal adds ordinal suffix (e.g., "st", "nd", etc)
  qnames <- ordinal(0:n)

  # calculate the quantiles
  step_size <- 1/n
  quantiles <- quantile(x, probs = seq(0, 1, step_size))

  # determine quantile name for each value
  results <- sapply(x, function (y) qnames[ sum(y >= quantiles) ])

  # return the highest quantile that this value exceeds or equals
  results
}

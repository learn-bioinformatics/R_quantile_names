#!/bin/env Rscript

# functions
quarter_names <- function(x) {
                 # Repeat very bottom name
                 # to include min values
  group_names <- c("top25", "hi-mid25", "mid-low25", "bottom25", "bottom25")

  # calculate the quantiles
  step_size <- 0.25
  quantiles <- quantile(x, probs = seq(0, 1, step_size))

  # determine quantile name for each value
  results <- sapply(x, function (y) group_names[ sum(y <= quantiles) ])

  # return the highest group that this value exceeds or equals
  results
}

# functions
half_names <- function(x) {
                 # Repeat very bottom name
                 # to include min values
  group_names <- c("top50", "bottom50", "bottom50")

  # calculate the quantiles
  step_size <- 0.50
  quantiles <- quantile(x, probs = seq(0, 1, step_size))

  # determine quantile name for each value
  results <- sapply(x, function (y) group_names[ sum(y <= quantiles) ])

  # return the highest group that this value exceeds or equals
  results
}

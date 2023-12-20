library(rpart)

adaboost_regression_trees <- function(X, y, M) {
  # X: predictor variables or features of the dataset
  # y: response variable or target variable of the dataset
  # M: the number of decision trees that included in the ensemble
  
  n <- length(y)
  weights <- rep(1/n, n)
  models <- list()
  
  for (m in 1:M) {
    model <- rpart(y ~ ., data = X, weights = weights)
    predictions <- predict(model, X)
    
    # Calculate weighted mean squared error
    weighted_mse <- sum(weights * (y - predictions)^2) / sum(weights)
    
    # Calculate the model weight alpha
    alpha <- 0.5 * log((1 - weighted_mse) / weighted_mse)
    
    # Update the weights
    weights <- weights * exp(-alpha * (y - predictions) * sign(y - predictions))
    
    # Normalize the weights
    weights <- weights / sum(weights)
    
    models[[m]] <- list(model = model, alpha = alpha)
  }
  
  return(models)
}


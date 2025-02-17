% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_metrics.R
\name{draw_scatterplot}
\alias{draw_scatterplot}
\title{Draw scatterplot of true vs predicted values of target for training and test data for one model}
\usage{
draw_scatterplot(
  train_observed,
  train_predictions,
  test_observed,
  test_predictions
)
}
\arguments{
\item{train_observed}{A vector of true values for training data.}

\item{train_predictions}{A vector of predicted values for training data.}

\item{test_observed}{A vector of true values for test data.}

\item{test_predictions}{A vector of predicted values for test data.}
}
\description{
Draw scatterplot of true vs predicted values of target for training and test data for one model
}
\examples{
type              <- guess_type(lisbon, 'Price')
preprocessed_data <- preprocessing(lisbon, 'Price')
split_data <-
  train_test_balance(preprocessed_data$data,
                     y = 'Price',
                     type = type,
                     balance = FALSE)
train_data <- prepare_data(split_data$train,
                     y = 'Price',
                     engine = c('ranger', 'xgboost', 'decision_tree', 'lightgbm', 'catboost')
)
test_data <-
  prepare_data(split_data$test,
               'Price',
               engine = c('ranger', 'xgboost', 'decision_tree', 'lightgbm', 'catboost'),
               predict = TRUE,
               train = split_data$train)


models <-  train_models(train_data,
                       'Price',
                       engine = c('ranger', 'xgboost', 'decision_tree', 'lightgbm', 'catboost'),
                       type = type)
predictions <-
predict_models(models,
               test_data,
               'Price',
               engine = c('ranger', 'xgboost', 'decision_tree', 'lightgbm', 'catboost'),
               type = type)
draw_scatterplot(split_data$train$Price, models$ranger_model$predictions,
split_data$test$Price, predictions$ranger_preds)
}

% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_metrics.R
\name{draw_feature_importance}
\alias{draw_feature_importance}
\title{Draw Feature Importance plot}
\usage{
draw_feature_importance(best_models, test_data, y)
}
\arguments{
\item{best_models}{A list of models.}

\item{test_data}{A test dataset.}

\item{y}{A target variable. It can be either
(1) a vector of the same number of observations as `data` or
(2) a character name of variable in the `data` that contains
the target variable.}
}
\value{
A ggplot object.
}
\description{
Draw Feature Importance plot
}

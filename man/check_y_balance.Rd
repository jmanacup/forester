% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_data.R
\name{check_y_balance}
\alias{check_y_balance}
\title{Check whether the target column is unbalanced (for regression it bins values
via quantiles)}
\usage{
check_y_balance(df, y, verbose = TRUE)
}
\arguments{
\item{df}{A data source, that is one of the major R formats: data.table, data.frame,
matrix, and so on.}

\item{y}{A string that indicates a target column name.}

\item{verbose}{A logical value, if set to TRUE, provides all information about
the process, if FALSE gives none.}
}
\value{
A list with every line of the sub-report.
}
\description{
Check whether the target column is unbalanced (for regression it bins values
via quantiles)
}

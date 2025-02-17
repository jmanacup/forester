% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preprocessing.R
\name{delete_id_columns}
\alias{delete_id_columns}
\title{Delete columns that are ID-like columns}
\usage{
delete_id_columns(data)
}
\arguments{
\item{data}{A data source before preprocessing, that is one of the major R formats:
data.table, data.frame, matrix, and so on.}
}
\value{
A dataset with removed ID columns.
}
\description{
Delete columns that are ID-like columns
}

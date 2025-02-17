% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/check_data.R
\name{detect_id_columns}
\alias{detect_id_columns}
\title{Detect columns that are ID-like columns}
\usage{
detect_id_columns(data, verbose = TRUE)
}
\arguments{
\item{data}{A data source before preprocessing, that is one of the major R formats:
data.table, data.frame, matrix, and so on.}

\item{verbose}{A logical value, if set to TRUE, provides all information about
the process, if FALSE gives none.}
}
\value{
A list with every line of the sub-report.
}
\description{
Detect columns that are ID-like columns
}

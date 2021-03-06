% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/monitor.console.R
\name{setupConsoleMonitor}
\alias{setupConsoleMonitor}
\title{Simple stdout monitoring function.}
\usage{
setupConsoleMonitor(show.info.stepsize = 5L, num.format = "\%g")
}
\arguments{
\item{show.info.stepsize}{[\code{integer(1)}]\cr
Adjust the stepsize of iterations with informative messages.}

\item{num.format}{[\code{character(1)}]\cr
Number format for output of numeric parameters. See the details section of
the manual for \code{\link[base]{sprintf}} for details.
Default is \dQuote{\%g}.}
}
\value{
[\code{ecr_monitor}]
}
\description{
This is the default monitoring function used by ecr. It simply outputs
the iteration as well as minimal, mean and maximal target values from the current
population.
}


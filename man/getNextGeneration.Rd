% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getNextGeneration.R
\name{getNextGeneration}
\alias{getNextGeneration}
\title{Performs survival selection.}
\usage{
getNextGeneration(opt.state, offspring, control)
}
\arguments{
\item{opt.state}{[\code{ecr_opt_state}]\cr
Optimization state.}

\item{offspring}{[\code{ecr_population}]\cr
Generated offspring.}

\item{control}{[\code{ecr_control}]\cr
Control object.}
}
\value{
[\code{ecr_population}]
}
\description{
Given the current optimization state and the list of offspring individuals,
the function selects the next generation. The selection type is based on the
parameters given in the control object.
}


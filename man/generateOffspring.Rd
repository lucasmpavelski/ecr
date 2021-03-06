% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/generateOffspring.R
\name{generateOffspring}
\alias{generateOffspring}
\title{Creates offspring from a given mating pool of parents.}
\usage{
generateOffspring(opt.state, mating.pool, control)
}
\arguments{
\item{opt.state}{[\code{ecr_opt_state}]\cr
Optimization state.}

\item{mating.pool}{[\code{ecr_population}]\cr
Mating pool to select individuals from.}

\item{control}{[\code{ecr_control}]\cr
Control object.}
}
\value{
[\code{ecr_population}] Generated offspring.
}
\description{
Given and optimization state and a mating pool of individuals this function
generates offspring individuals based on the parameters specified in the
control object.
}


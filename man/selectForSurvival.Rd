% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setupECRControl.R
\name{selectForSurvival}
\alias{selectForSurvival}
\title{Generate mating pool.}
\usage{
selectForSurvival(opt.state, population, control,
  n.select = control$n.population)
}
\arguments{
\item{opt.state}{[\code{ecr_opt_state}]\cr
Optimization state.}

\item{population}{[\code{list}]\cr
Current population.}

\item{control}{[\code{ecr_control}]\cr
ECR control object generated via \code{\link{setupECRControl}}.}

\item{n.select}{[\code{integer(1L)}]\cr
Number of offspring to select for survival.}
}
\value{
[\code{ecr_population}]
}
\description{
Given the current optimization state this function selects a subset of individuals
which should survive and form the next generation.
}
\note{
Basically this is a wrapper for the call to the parent selector of the control
object which occasionally transforms the fitness values (e.g., if maximzation should be
performed, but the selection operator actualy minimizes).
}


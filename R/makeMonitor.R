#' @title
#' Factory method for monitor objects.
#'
#' @description
#' Monitor objects serve for monitoring the optimization process. Each monitor
#' object expects the parameters \code{before}, \code{step} and \code{after},
#' each being a function and expecting \code{envir = parent.frame()} as the
#' only parameter. This way one can access all the variables used within the
#' evolutionary cycle.
#'
#' @param before [\code{function}]\cr
#'   Function called one time after initialization of the EA.
#' @param step [\code{function}]\cr
#'   Function applied after each iteration of the algorithm.
#' @param after [\code{function}]\cr
#'   Function applied after the EA terminated.
#' @param ... [\code{any}]\cr
#'   Not used.
#' @return [\code{ecr_monitor}]
#'   Monitor object.
#'
#' @example examples/ex_makeMonitor.R
#' @export
makeMonitor = function(before = NULL, step = NULL, after = NULL, ...) {
  if (!is.null(before)) assertFunction(before, args = c("opt.state", "..."))
  if (!is.null(step)) assertFunction(step, args = c("opt.state", "..."))
  if (!is.null(after)) assertFunction(after, args = c("opt.state", "..."))
  dummy = function(opt.state, ...) {}
  structure(
    list(
      before = coalesce(before, dummy),
      step = coalesce(step, dummy),
      after = coalesce(after, dummy)
    ),
    class = "ecr_monitor"
  )
}

# @title
# Registers monitoring functions to events.
#
# @param event.dispatcher [\code{ecr_event_dispatcher}]\cr
#   Event dispatcher.
# @param monitor [\code{ecr_monitor}]\cr
#   Monitoring object.
installMonitor = function(event.dispatcher, monitor) {
  assertClass(event.dispatcher, "ecr_event_dispatcher")
  assertClass(monitor, "ecr_monitor")
  event.dispatcher$registerAction("onEAInitialized", monitor$before)
  event.dispatcher$registerAction("onPopulationUpdated", monitor$step)
  event.dispatcher$registerAction("onEAFinished", monitor$after)
}

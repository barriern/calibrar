# Test functions ----------------------------------------------------------

# method for plotting (2D and 3D)
# method for summary and print
# f() print the minimum

#' @export
summary.calibrar.function = function(object, ...) {
  return(invisible())
}

#' Sphere function with random noise
#'
#' This function calculates the Euclidian distance from a point to the origin
#' after a random displacement of its position.
#'
#' @param x The coordinates of the point
#' @param sd The standard deviation of the noise
#' to be added to the position of \code{x}, a normal distribution with mean
#' zero is used.
#' @param aggregate If \code{aggregate} is \code{TRUE} the distance is returned,
#' otherwise the size of the projection of the distance among each axis.
#' @return The distance from the point \code{x} to the origin after a random
#' displacement.
#' @author Ricardo Oliveros--Ramos
#' @keywords stochastic random
#' @examples sphereN(rep(0, 10))
#' @aliases sphereN
#' @export
sphereN = function(x, sd=0.1, aggregate=TRUE, fixed_seed=TRUE) {
  # f(0,...,0) = 0
  # x_i \in ]-Inf, Inf[
  if(fixed_seed) set.seed(880820)
  x = unlist(x)
  x = x + rnorm(length(x), sd=sd)
  out = x^2
  if(isTRUE(aggregate)) return(sum(out)) else return(out)
}

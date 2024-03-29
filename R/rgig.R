
rgig <- function(n=1, lambda, chi, psi) {
  ## ------------------------------------------------------------------------
  ## Generate GIG distributed random variates
  ##
  ## density proportional to
  ##    f(x) = x^{\lambda-1} e^{-1/2 (\chi/x+\psi x)}
  ## 
  ##       x >= 0
  ## ------------------------------------------------------------------------
  ## Arguments:
  ##
  ##   n ....... sample size
  ##   lambda .. parameter for distribution
  ##   chi   ... parameter for distribution                                   
  ##   psi   ... parameter for distribution                                   
  ## ------------------------------------------------------------------------

  ## generate sample
  .Call(C_rgig, n, lambda, chi, psi)
}

dgig <- function(x, lambda, chi, psi, log = FALSE) {
  ## ------------------------------------------------------------------------
  ## Generate GIG distributed random variates
  ##
  ## density proportional to
  ##    f(x) = x^{\lambda-1} e^{-1/2 (\chi/x+\psi x)}
  ## 
  ##       x >= 0
  ## ------------------------------------------------------------------------
  ## Arguments:
  ##
  ##   n ....... sample size
  ##   lambda .. parameter for distribution
  ##   chi   ... parameter for distribution                                   
  ##   psi   ... parameter for distribution
  ##   log   ... if TRUE the logarithm of the density will be returned
  ## ------------------------------------------------------------------------

  ## generate sample
  .Call(C_dgig, x, lambda, chi, psi, log)
}

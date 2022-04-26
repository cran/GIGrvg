\encoding{UTF-8}
\name{GIGrvg-package}
\alias{GIGrvg-package}
\alias{GIGrvg}
\docType{package}

\title{
  Generator and density for the Generalized Inverse Gaussian (GIG) distribution
}

\description{
  This package provides a generator and the density for the Generalized
  Inverse Gaussian (GIG) distribution.
  It uses the parametrization with density proportional to
  \deqn{f(x) = x^{\lambda-1} e^{-\frac{1}{2}(\chi/x+\psi x)}}{%
    f(x) = x^(\lambda-1) e^(-(\chi/x+\psi*x)/2)}
}

\details{
  \tabular{ll}{
    Package: \tab GIGrvg          \cr
    Type:    \tab Package       \cr
    Version: \tab 0.6           \cr
    Date:    \tab 2022-04-26    \cr
    License: \tab GPL 2 or later\cr
  }

  Package \pkg{GIGrvg} provides two routines:
  \describe{
    \item{\code{\link{rgig}}}{generates GIG distributed random variates.
      It is especially designed for the varying parameter case, i.e.,
      for sample size \code{n=1}.}
    \item{\code{\link{dgig}}}{computes the density of the GIG
      distribution.}
  }

  \strong{Note} that the parameters of the distribution are assumed to
  be single values.
  If a vector is provided then just the first value is used!
  
  For the very fast generation of large samples more efficient
  algorithms exists.
  We recommend package \pkg{\link[Runuran]{Runuran}}.
}

\author{
  Josef Leydold \email{josef.leydold@wu.ac.at} and
  Wolfgang \enc{Hörmann}{Hoermann}.
}

\references{%
  Wolfgang \enc{Hörmann}{Hoermann} and Josef Leydold (2013).
  Generating generalized inverse Gaussian random variates,
  Statistics and Computing (to appear),
  DOI: 10.1007/s11222-013-9387-3
}

\examples{
## Draw a random sample
rgig(n=10, lambda=0.5, chi=0.1, psi=2)

## Evaluate the density
dgig(0.3, lambda=0.5, chi=0.1, psi=2)

}

\keyword{package}
\keyword{distribution}
\keyword{datagen}

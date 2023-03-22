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
    Version: \tab 0.8           \cr
    Date:    \tab 2023-03-22    \cr
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
  Wolfgang \enc{Hörmann}{Hoermann} and Josef Leydold (2014).
  Generating generalized inverse Gaussian random variates,
  Statistics and Computing 24, 547--557,
  DOI: 10.1007/s11222-013-9387-3
  
  See also Research Report Series / Department of Statistics and Mathematics 
  Nr. 123, Department of Statistics and Mathematics,
  WU Vienna University of Economics and Business,
  \url{https://research.wu.ac.at/en/publications/generating-generalized-inverse-gaussian-random-variates-3}.

  J. S. Dagpunar (1989).
  An easily implemented generalised inverse Gaussian generator,
  Comm. Statist. B -- Simulation Comput. 18, 703--710.

  Karl Lehner (1989).
  Erzeugung von Zufallszahlen \enc{für}{fuer} zwei exotische
  stetige Verteilungen,
  Diploma Thesis, 107 pp.,
  Technical University Graz, Austria
  (in German).
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

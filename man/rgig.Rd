\encoding{UTF-8}

\name{rgig}
\alias{rgig}
\alias{dgig}

\title{ 
  Generator and Density of Generalized Inverse Gaussian (GIG) distribution.
}

\description{
  Random variate generator for the Generalized Inverse Gaussian (GIG)
  distribution. The generator is especially designed for the varying
  parameter case, i.e., for sample size \code{n=1}.
}

\usage{
rgig(n=1, lambda, chi, psi)
dgig(x, lambda, chi, psi, log = FALSE)
}

\arguments{
  \item{n}{Number of observations}
  \item{lambda}{Shape parameter}
  \item{chi}{Shape and scale parameter. Must be nonnegative for positive lambda and positive else.}
  \item{psi}{Shape and scale parameter. Must be nonnegative for negative lambda and positive else.}
  \item{x}{Argument of pdf}
  \item{log}{If \code{TRUE} the logarithm of the density will be returned.}
}

\details{
  The package uses a parametrization for the GIG distribution where the
  density is proportional to
  \deqn{f(x) = x^{\lambda-1} e^{-\frac{1}{2}(\chi/x+\psi x)}.}{%
    f(x) = x^(\lambda-1) e^(-(\chi/x+\psi*x)/2) .}
  The parameters have to satisfy the conditions
  
  \deqn{%
    \begin{array}{l}
    \lambda > 0,\, \psi > 0, \chi \geq 0, \quad\mbox{or} \\
    \lambda = 0,\, \psi > 0, \chi > 0,    \quad\mbox{or}  \\
    \lambda < 0,\, \psi \geq 0, \chi > 0.
    \end{array}
  }{%
    \lambda > 0, \psi > 0, \chi >= 0, or
    \lambda = 0, \psi > 0, \chi > 0,  or
    \lambda < 0, \psi >= 0, \chi > 0. }

  The generator is especially designed for the varying parameter case,
  i.e., for sample size \code{n=1}.

  \strong{Note} that the arguments \code{n}, \code{lambda}, \code{chi},
  \code{psi} for these two \R routines are assumed to be single values.
  If a vector is provided, then just the first value is used!

  For the generation of large samples more efficient algorithms exist.
  We recommend package \pkg{\link[Runuran]{Runuran}}.
  The fast numeric inversion function \code{pinvd.new} is usable for GIG.
  It is about three times faster than \code{rgig} for large values of \code{n}.
  However, it requires a slow set-up and is therefore not useful for the
  varying parameter case.
  For the usage of the Runuran functions see the last example below.

  Routine \code{rgig} applies three different algorithms depending on
  the given parameters. When the density is T-concave (roughly spoken
  when \eqn{\lambda\geq 1}{\lambda >= 1} or
  \eqn{\psi\,\chi\geq 1/4}{\psi times \chi >= 1/4}
  two variants of the Ratio-of-Uniforms method due to Lehner (1989) are 
  used. These are quite similar to the widely used algorithm by Dapunar
  but have a faster setup.
  When the density is not T-concave then a new algorithm with a
  uniformly rejection constant is used.
  (In the latter case Dagpunar's algorithm may become extremely slow or
  may sample from an invalid distribution.)
}

\value{
  \code{rgig} creates a random sample of size \code{n}. In case of
  invalid arguments the routine simply stops execution.
  
  \code{dgig} evaluates the density of the GIG distribution.
}

\author{
  Josef Leydold \email{josef.leydold@wu.ac.at} and
  Wolfgang \enc{Hörmann}{Hoermann}.
}

\references{%
  Wolfgang \enc{Hörmann}{Hoermann} and Josef Leydold (2013).
  Generating generalized inverse Gaussian random variates,
  Statistics and Computing 24, 547--557,
  DOI: 10.1007/s11222-013-9387-3

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

%% \seealso{}

\examples{
## Draw a random sample
x <- rgig(n=10, lambda=0.5, chi=0.1, psi=2)

## Evaluate the density
x <- dgig(0.3, lambda=0.5, chi=0.1, psi=2)

## Create a random sample and create a histgram
y <- rgig(n=10^5,0.1,2,3)
hist(y,breaks=100,freq=FALSE)
xval <- seq(0,max(y),0.01) # to add plot the corresponding density
lines(xval,dgig(xval,0.1,2,3))

\dontrun{
## Use a fast method from package Runuran for large samples
## (method PINV implements an approximate inversion method)
library("Runuran")
gen <- pinvd.new(udgig(theta=0.2, psi=0.05, chi=0.05))
x <- ur(gen, 10^6)
}

}

\keyword{package}
\keyword{distribution}
\keyword{datagen}

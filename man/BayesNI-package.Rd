\name{BayesNI-package}
\alias{BayesNI-package}
\alias{BayesNI}
\docType{package}
\title{
Semiparametric Bayesian Noninfereiority Testing
}
\description{
This package implements a Bayesian testing procedure for noninfeiority trials with binary endpoints. The prior is constructed based on Bernstein polynomials with  options for both informative and non-informative prior. The critical value of the test statistic Bayes factor is determined by minimizing total weighted error criteria. 
}
\details{
\tabular{ll}{
Package: \tab BayesNI\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-11-08\cr
License: \tab GPL-2\cr
LazyLoad: \tab yes\cr
}

}
\author{
Muhtarjan Osman and Sujit K. Ghosh

Maintainer: Muhtarjan Osman <mjosman@gmail.com>

}
\references{
Osman M. and Ghosh S. K. (2011) Semiparametric Bayesian Testing Procedure for Non-inferiority Trials with Binary Endpoints. Journal of Biopharmaceutical Statistics, 21, 920-937.
}
\keyword{noninferiority, Bayes factor}
\seealso{
NA
}
\examples{
bayesNI(x1=97,x2=98,n1=107,n2=106, dm='OR',rho=0.5, m=20,zeta=0.025, TWE=1)
}

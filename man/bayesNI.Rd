\name{bayesNI}
\alias{bayesNI}
\title{
Semiparametric Bayesian testing procedure for non-inferiority trials with binary endpoints
}
\description{
This function calculates the Bayes factor and the cut-off value for noninfeiority trials with binary endpoints. The prior is constructed based on Bernstein polynomials with  options for both informative and non-informative prior. The critical value of the test statistic (Bayes factor) is determined by minimizing total weighted error (TWE) criteria.
}
\usage{
bayesNI(x1, x2, n1, n2, dm = 'OR', rho, m = 10, noninform.prior = TRUE, 
        w1, w2, TWE = 1, zeta = 0.5, plot.prior = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x1}{
The number of success events in the group 1
}
  \item{x2}{
The number of success events in the group 2
}
  \item{n1}{
The total number of subjects in the group 1
}
  \item{n2}{
The total number of subjects in the group 2
}
  \item{dm}{
The dissimilarity measure of two binomial parameters: "RD" risk difference ; "RR" relative risk ; 
"OR" odds ratio (default value)
}
  \item{rho}{
Noninferiority boundary
}
  \item{m}{
The order of Bernstein polynomials (default value m=10) 
}
  \item{noninform.prior}{
"TRUE" (default) for using noninformative prior to determines weights in the mixture prior; "FALSE" user-specified weights in the mixture prior based on prior information
}
  \item{w1}{
If noninform.prior=FALSE, a user-specified vector of weights for the prior of theta_1. The length of this vector should be m.
}
  \item{w2}{
If noninform.prior=FALSE, a user-specified vector of weights for the prior of theta_2. The length of this vector should be m.
}
  \item{TWE}{
1 (default value): total weighted error conditioned on the hypotheses; 2 : total weighted error conditioned on the decisions
}
  \item{zeta}{
The weight the total weighted criteria
}
  \item{plot.prior}{
future functionality, under development.
}
}
\details{
This function gives the Bayes factor and the cut-off value for noninfeiority trials with binary endpoints. 
The prior is constructed based on Bernstein polynomials with  options for both informative and non-informative prior. 
The weights w1 and w2 are not necessary when using non-informative prior. For informative prior, users can refer to 
the correspondering section in Osman and Ghosh (2012) on how to construct weights based on historical data.
The Bayes factor computed in this function is define in favor of alternative hypothesis. A larger Bayes factor indicates
stronger evidence against the null hypothesis. The critical value of the test statistic (Bayes factor) is determined by 
minimizing total weighted error (TWE) criteria. Users can refer to Theorem 1 in Osman and Ghosh (2012) for specification
of the weight zeta. A common approach is to set zeta=alpha=0.05.  
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
\item{logBF }{the observed (log) Bayes factor}
\item{L0 }{the cut-off critical value of (log) Bayes factor for the rejection region }
\item{w1 }{the weights used in the prior of theta_1}
\item{w2 }{the weights used in the prior of theta_2}
}
\references{
Osman M. and Ghosh S. K. (2011) Semiparametric Bayesian Testing Procedure for Non-inferiority Trials with Binary Endpoints. Journal of Biopharmaceutical Statistics, 21, 920-937.
}
\author{
Muhtarjan Osman and Sujit K. Ghosh
}
\note{
NA
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
NA}
\examples{
bayesNI(x1=97,x2=98,n1=107,n2=106, dm='OR',rho=0.5, m=20,zeta=0.025, TWE=1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{noninferiority}
\keyword{Bayesian}% __ONLY ONE__ keyword per line

\name{seg.lm.fit}
\alias{seg.lm.fit}
\alias{seg.glm.fit}
\alias{seg.lm.fit.boot}
\alias{seg.glm.fit.boot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Fitter Functions for Segmented Linear Models
}
\description{
\code{seg.lm.fit} is called by \code{segmented.lm} to fit segmented linear 
(gaussian) models.  Likewise \code{seg.glm.fit} is called by \code{segmented.glm} to fit  
generalized segmented linear models. These functions should usually not be used directly by the user.
}
\usage{
seg.lm.fit(y, XREG, Z, PSI, w, offs, opz)

seg.lm.fit.boot(y, XREG, Z, PSI, w, offs, opz, n.boot=10, size.boot=NULL, 
    jt=FALSE, nonParam=TRUE, random=FALSE)

seg.glm.fit(y, XREG, Z, PSI, w, offs, opz)

seg.glm.fit.boot(y, XREG, Z, PSI, w, offs, opz, n.boot=10, size.boot=NULL, 
    jt=FALSE, nonParam=TRUE, random=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{y}{
vector of observations of length \code{n}.
}
  \item{XREG}{
design matrix for standard linear terms.
}
  \item{Z}{
appropriate matrix including the segmented variables whose breakpoints have to be estimated.
}
  \item{PSI}{
  appropriate matrix including the starting values of the breakpoints to be estimated.
}
  \item{w}{
  possibe weights vector.
}
  \item{offs}{
  possibe offset vector.
}
  \item{opz}{
  a list including information useful for model fitting.
}
  \item{n.boot}{
  the number of bootstrap samples employed in the bootstrap restart algorithm.
}
  \item{size.boot}{
  the size of the bootstrap resamples. If \code{NULL} (default), it is taken equal to the sample size.
  values smaller than the sample size are expected to increase perturbation in the bootstrap resamples.
}
  \item{jt}{
  logical. If \code{TRUE} the values of the segmented variable(s) are jittered before fitting the model to the
  bootstrap resamples.  
}
  \item{nonParam}{
  if \code{TRUE} nonparametric bootstrap (i.e. case-resampling) is used, otherwise residual-based. 
}
  \item{random}{
  if \code{TRUE}, when the algorithm fails to obtain a solution, random values are employed to obtain candidate values.
}
}
\details{
The functions call iteratively \code{lm.wfit} (or \code{glm.fit}) with proper design matrix depending on 
\code{XREG}, \code{Z} and \code{PSI}. \code{seg.lm.fit.boot} implements the bootstrap restarting idea discussed in
Wood (2001).
}
\value{
A list of fit information.
}
\references{ Wood, S. N. (2001) Minimizing model fitting objectives that contain spurious local minima
    by bootstrap restarting. \emph{Biometrics} \bold{57}, 240--244. }
\author{ Vito Muggeo }
\note{
These functions should usually not be used directly by the user.
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
\code{\link{segmented.lm}}, \code{\link{segmented.glm}}
}
\examples{
##See ?segmented
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{regression}
\keyword{nonlinear }
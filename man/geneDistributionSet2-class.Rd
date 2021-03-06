\name{geneDistributionSet2-class}
\Rdversion{1.1}
\docType{class}
\alias{geneDistributionSet2}
\alias{geneDistributionSet2-class}

\title{Class \code{"pathVarTwoSamplesCont"}}
\description{
This is a class representation for storing the output of the \code{pathVarTwoSamplesCont} function.
}
\section{Objects from the Class}{
Objects are output by the function \code{\link{pathVarTwoSamplesCont}}. 
Objects can also be created by calls of the form \code{new("geneDistributionSet2", ...)}.
}
\section{Slots}{
  \describe{
    \item{\code{tablePway}:}{A \code{"data.table"} of pathway name, pathway IDs, adjusted p-value from the boot KS test, 
    the number of genes from our dataset inside the pathway and the total number of genes inside the pathway.}
    \item{\code{NAPways}:}{A \code{character} object that contains the pathway names of the pathway having no genes inside the dataset.}
    \item{\code{genesInPway}:}{A \code{list} object that contains the genes from the dataset belonging to each pathway.}
    \item{\code{groups}:}{A \code{factor} object that contains the groups in which group each sample belongs to.}
    \item{\code{groupNames}:}{A \code{character} object that contains the names of the two groups.}    
    \item{\code{var1}:}{A \code{numeric} object that contains the statistics (sd, mad, cv or mean) for each gene for group 1.}
    \item{\code{var2}:}{A \code{numeric} object that contains the statistics (sd, mad, cv or mean) for each gene for group 2.}
    \item{\code{varStat}:}{A \code{character} object that contains the statistics sd, mad, cv or mean chosen for the analysis.}
  }
}
\section{Methods}{
No methods defined with class "geneDistributionSet2" in the signature.
}
\author{
Laurence de Torrente, Samuel Zimmerman, Jessica Mar
}

\examples{
out <- new("geneDistributionSet2",tablePway=data.table::data.table(),NAPways=character(),genesInPway=list(),groups=as.factor(c(rep(1,10),rep(2,10))),groupNames=character(),var1=c(0),var2=c(0),varStat=character())
showClass("geneDistributionSet2")
}
\keyword{classes}

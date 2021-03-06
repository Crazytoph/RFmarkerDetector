% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Exploring.R
\name{pca}
\alias{pca}
\title{Principal Component Analysis}
\usage{
pca(X, autoscale = T, exclude = T)
}
\arguments{
\item{X}{a n x p data frame of n observations and p variables.}

\item{autoscale}{a logical value indicating whether the variables should be autoscaled}

\item{exclude}{a logical value indicating whether the first two columns should be excluded from the computation.
The default is TRUE, because usually the first two columns of the dataset processed represent respectively
the sample names and the class labels associated with the samples}
}
\value{
an S3 object of class \code{pca} with the following components: \itemize{
\item scores the scores matrix
\item loadings the loading matrix
\item variances the vector of variances explained by each PC
\item classes the vector of the class labels associated with the samples
\item features the vector with the names of the input variables

}
}
\description{
Performs a principal component analysis based on Singular Value Decomposition, on the given data matrix 
and returns the result as an object of the S3 class \code{pca}
}
\examples{
data(cachexiaData)
pca_obj <- pca(cachexiaData, autoscale = TRUE, exclude = TRUE)
}
\author{
Piergiorgio Palla
}


% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RFMCcv.R
\name{mccv}
\alias{mccv}
\title{mccv class}
\usage{
mccv(predictions, labels, models)
}
\arguments{
\item{predictions}{a n x p dataframe of the predictions collected during the cross-validation process of the random forest, with
n is equal to the number of samples in each test set and p is equal to the number of test sets}

\item{labels}{a n x p dataframe of the labels of the samples included in each test set obtained splitting the original dataset
during the cross-validation process of the model}

\item{models}{a list of p random forest models tested in the cross-validation process}
}
\value{
an object of class mccv
}
\description{
A constructor function for the S3 class mccv; the mccv class encapsulates information such as predictions and abels needed to 
plot roc curve(s) for a cross-validated random forest model
}
\examples{
## load a simple dataset with the vectors of the predictions and the labels resulting from a CV 
data(simpleData)
mccv_obj <- mccv(simpleData$predictions, simpleData$labels, models = NULL)
}
\author{
Piergiorgio Palla
}


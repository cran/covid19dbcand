% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{Classifications_Drug}
\alias{Classifications_Drug}
\title{Drug Classification}
\format{
a tibble with 9 variables:
\describe{
  \item{description}{}
  \item{direct_parent}{}
  \item{kingdom}{}
  \item{superclass}{}
  \item{class}{}
  \item{subclass}{}
  \item{alternative_parents}{One or more alternative parents}
  \item{substituents}{	One or more substituents}
  \item{drugbank_id}{drugbank id}
}
}
\source{
\href{https://docs.drugbankplus.com/xml/}{Drugbank Documentation}
}
\usage{
Classifications_Drug
}
\description{
A description of the hierarchical chemical classification of the drug;
imported from \href{http://classyfire.wishartlab.com/}{ClassyFire}.
}
\keyword{datasets}

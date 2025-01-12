% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ZINQ_check.R
\name{ZINQ_check}
\alias{ZINQ_check}
\title{Sanity check before applying ZINQ}
\usage{
ZINQ_check(tax_tab, metadata, C)
}
\arguments{
\item{tax_tab}{The taxa read count table (un-normalized), sample (row) by taxa (col).}

\item{metadata}{The metadata, sample (row) by variable (col).}

\item{C}{The name(s) of clinical variable(s) of interest, e.g., "Condition" or c("Condition", "Batch").}
}
\value{
Print warnings if necessary
\itemize{
  \item When library size is a confounder
  \item For each taxon, (1) when all read counts are zero, (2) when there are limited non-zero read counts (<30 or <15), (3) when there is a perfect separation w.r.t. the variable(s) of interest.
}
}
\description{
Sanity check before applying ZINQ
}
\details{
\itemize{
  \item It is recommended to do the sanity check before applying ZINQ. If it is necessary, warnings will be printed to guide the analysis using ZINQ.
  \item If library size is a confounder of the variable(s) of interest, ZINQ might not control type I error.
  \item If there are few non-zero read counts, use ZINQ with caution.
  \item ZINQ is not designed for perfect separation, e.g., there are all zeroes in one group (case or control).
  \item The sanity check is mainly about zero inflation. Most normalizations will keep the original zeroes, thus investigaing the un-normalized taxa read count table provides sufficient clues to use ZINQ.
   For normalizations not retaining the zeroes. e.g., CLR, results of the sanity check is not informative, one can apply ZINQ directly.
}
}

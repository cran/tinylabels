% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/methods-stats.R
\name{relevel.tiny_labelled}
\alias{relevel.tiny_labelled}
\title{Reorder Levels of Labelled Factor}
\usage{
\method{relevel}{tiny_labelled}(x, ref, ...)
}
\arguments{
\item{x}{an unordered factor.}

\item{ref}{the reference level, typically a string.}

\item{...}{additional arguments for future methods.}
}
\description{
The levels of a factor are re-ordered so that the level specified by ref is
first and the others are moved down. This is a copy from \code{\link[stats]{relevel}}
in the \pkg{stats} package, but preserves the \code{label} attribute and class \code{tiny_labelled}.
}

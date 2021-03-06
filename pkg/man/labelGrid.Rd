% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rosettr-image.R
\name{labelGrid}
\alias{labelGrid}
\title{Label the wells in a grid}
\usage{
labelGrid(im, griddf, wellWidth, color = "black", cex = 1)
}
\arguments{
\item{im}{an image}

\item{griddf}{a data frame that specified the grid (see
\code{\link{metaTemplate}})}

\item{wellWidth}{the width of a well}

\item{color}{the color of the letters}

\item{cex}{the character expansion factor}
}
\value{
the labeled image
}
\description{
Add row and column index labels to all wells on a plate
}
\author{
Henning Redestig
}


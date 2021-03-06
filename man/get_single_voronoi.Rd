% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_single_voronoi.R
\name{get_single_voronoi}
\alias{get_single_voronoi}
\title{Rasterized version of the 'Weighted Voronoi Diagram'}
\usage{
get_single_voronoi(
  core,
  point,
  buffer = NULL,
  weight_column = NULL,
  class_columns = NULL,
  res = 1,
  warn = TRUE
)
}
\arguments{
\item{core}{Polygon containing a core plot boundary. \code{core} has to
be a length one \code{sfc_POLYGON}-object.}

\item{point}{An \code{sf}-object with a \code{sfc_POINT}geometry column and another
weighting column.}

\item{buffer}{If available, a polygon containing a buffer plot boundary.
\code{buffer} has to be a length one \code{sfc_POLYGON}-object. Relevant to
decide which assignments of grid cells to points are critical.}

\item{weight_column}{Character vector of length one. This column of the
\code{point} dataset will be used as weight. If left out, an unweighted
Voronoi Diagram will be calculated.}

\item{class_columns}{Character vector specifying additional columns in
/code{point} that will be added as separate classes to the output
/code{Raster}-object.}

\item{res}{A numeric vector of length one specifying the resolution of the
output grid}

\item{warn}{Issue a warning if the coordinate system is not metric (which is not tested).}
}
\value{
A \code{RasterStack}-object.
}
\description{
Polygons are rasterized and a Weighted Voronoi Diagram is calculated.
}
\keyword{internal}

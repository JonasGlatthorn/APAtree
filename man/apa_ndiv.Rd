% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apa_ndiv.R
\name{apa_ndiv}
\alias{apa_ndiv}
\title{Calculate the index for neighborhood diversity NDiv for an apa_list}
\usage{
apa_ndiv(
  apa_list,
  dis_trait_column,
  dis_method = "gowdis",
  dis_transform = sqrt,
  scope = "global",
  edge_correction = "none",
  pdiv = TRUE
)
}
\arguments{
\item{apa_list}{A \code{apa_list}-object that was created with the
[apa_list]-function.}

\item{dis_trait_column}{A list containing combinations of traits that will
be used to estimate dissimilarity between trees when calculating
apa-properties. Refers to column names of \code{tree_dat}.}

\item{dis_method}{Which method should be used to estimate dissimilarity
between trees. If \code{dis_method} is \code{gowdis}, \code{\link[FD:gowdis]{FD::gowdis()}} will
be used to calculate Gower dissimilarity. Alternatively, \code{dis_method}
may be any \code{function} that calculates a dissimilarity matrix out of a
\code{data.frame} with trait values.}

\item{dis_transform}{A \code{function} to transform dissimilarities. Defaults
to \code{sqrt}.}

\item{scope}{Should scaling of the dissimilarity be done at \code{"global"}
or at \code{"local"} level? If \code{dis_method} scales dissimilarity
between trees according to the range of occurring values in the dataset (as
done by \code{"gowdis"}), a \code{"global"} \code{scope} will use the range
of all values in \code{tree_dat}. Any other \code{scope} will use the range
of values at plot-level to scale dissimilarity.}

\item{edge_correction}{which of the implemented edge correction method should
be applied when calculating apa-properties (\code{"none"},
\code{"critical"} or \code{"border_tree_exclusion"}.}

\item{pdiv}{If TRUE (default), pdiv will be calculated (proportion-based diversity,
average dissimilarity between a tree and all other trees in a stand,
irrespective of the spatial configuration.)}
}
\description{
NDiv assesses the average dissimilarity between trees and their neighbors
using APA-maps. Dissimilarity can be assessed using a species- or a
trait-based approach. Upscaling of the tree-level NDiv to the species- or
stand-level are provided.
}
\details{
See Glatthorn (2021) for details.
}
\examples{
library(APAtree)
data(tree_enrico, package = "APAtree")
data(plot_enrico, package = "APAtree")

tree_enrico$height_class <- tree_enrico$height > 20

# only calculate an apa_list for two plots and with a coarse resolution of 1 m
# to save time.
apa_list_enrico <- 
  apa_list(plot_dat = subset(plot_enrico, id_plot \%in\% c("5.2", "8.2")), 
           tree_dat = tree_enrico,
           buffer_column = "buffer_geometry",
           core_column = "border_geometry",
           plot_id_column = "id_plot",
           tree_id_column = "id_tree",
           agg_class_column = "species",
           weight_column = "crown_radius_95",
           res = 1,
           apa_polygon = FALSE)

# Calculate SpeciesNDiv
apa_list_enrico <-
  apa_ndiv(apa_list_enrico,
           dis_trait_column = "species")

# tree-level SpeciesNDiv:
head(apa_list_enrico$tree_dat[, c("id_tree", "species_ndiv")])

# stand-level SpeciesNDiv:
apa_list_enrico$plot_dat[, c("id_plot", "species_ndiv")]

# species-level SpeciesNDiv:
head(apa_list_enrico$species[, c("id_plot", "species", "species_ndiv")])
}
\references{
{ Glatthorn, Jonas (2021). A spatially explicit index for tree
species or trait diversity at neighborhood and stand level. Ecological
Indicators, 130, 108073. https://doi.org/10.1016/j.ecolind.2021.108073.}
}

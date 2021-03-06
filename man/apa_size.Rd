% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/apa_size.R
\name{apa_size}
\alias{apa_size}
\title{Calculate the sizes of APA-patches in an \code{apa_list}}
\usage{
apa_size(apa_list, edge_correction = "none")
}
\arguments{
\item{apa_list}{A \code{apa_list}-object that was created with the
[apa_list]-function.}

\item{edge_correction}{which of the implemented edge correction method should
be applied when calculating apa-properties (\code{"none"},
\code{"critical"} or \code{"border_tree_exclusion"}.}
}
\description{
For Each dataset in an \code{apa_list}, the sizes of the respective
APA-patches will be calculated (absolute and proportional).
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
  apa_size(apa_list_enrico)

# tree-level APA-sizes:
head(apa_list_enrico$tree_dat[, c("id_tree", "apa_size_total", "apa_size_prop")])

# stand-level APA-sizes:
apa_list_enrico$plot_dat[, c("id_plot", "apa_size_total", "apa_size_prop")]

# species-level APA-sizes:
head(apa_list_enrico$species[, c("id_plot", "species", "apa_size_total", "apa_size_prop")])
}
\references{
{ Glatthorn, Jonas (2021). A spatially explicit index for tree
species or trait diversity at neighborhood and stand level. Ecological
Indicators, 130, 108073. https://doi.org/10.1016/j.ecolind.2021.108073.}

{ Gspaltl, M., Sterba, H., & O’hara, K. L. (2012). The relationship
between available area efficiency and area exploitation index in an even-aged
coast redwood (Sequoia sempervirens) stand. Forestry, 85(5), 567-577.}
}

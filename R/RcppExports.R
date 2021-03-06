# Generated by using Rcpp::compileAttributes() -> do not edit by hand
# Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#' @keywords internal
circle_lookup <- function(x, y, radius) {
    .Call('_APAtree_circle_lookup', PACKAGE = 'APAtree', x, y, radius)
}

#' @keywords internal
get_boundary_pixels <- function(x) {
    .Call('_APAtree_get_boundary_pixels', PACKAGE = 'APAtree', x)
}

#' @keywords internal
get_neighborhood_boundary_pixels <- function(x, y, radius) {
    .Call('_APAtree_get_neighborhood_boundary_pixels', PACKAGE = 'APAtree', x, y, radius)
}

#' @keywords internal
get_subplot_boundary_pixels <- function(x_wkt, y) {
    .Call('_APAtree_get_subplot_boundary_pixels', PACKAGE = 'APAtree', x_wkt, y)
}

#' @keywords internal
multipoint_linestring_distance <- function(multipoint, linestring) {
    .Call('_APAtree_multipoint_linestring_distance', PACKAGE = 'APAtree', multipoint, linestring)
}

#' @keywords internal
neighborhood_ca <- function(x, y, radius) {
    .Call('_APAtree_neighborhood_ca', PACKAGE = 'APAtree', x, y, radius)
}

#' @keywords internal
polygonize_class_cpp <- function(x, direction) {
    .Call('_APAtree_polygonize_class_cpp', PACKAGE = 'APAtree', x, direction)
}

#' @keywords internal
rasterized_weighted_voronoi <- function(rst, points) {
    .Call('_APAtree_rasterized_weighted_voronoi', PACKAGE = 'APAtree', rst, points)
}

#' @keywords internal
subplot_ca <- function(x_wkt, y) {
    .Call('_APAtree_subplot_ca', PACKAGE = 'APAtree', x_wkt, y)
}


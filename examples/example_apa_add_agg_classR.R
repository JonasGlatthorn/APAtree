library(APAtree)
data(tree_enrico, package = "APAtree")
data(plot_enrico, package = "APAtree")
data(subplot_enrico, package = "APAtree")

# Only choose two plots and a coarse resolution to save processing time
apa_list_enrico <- 
  apa_list(plot_dat = subset(plot_enrico, id_plot %in% c("5.2", "8.2")), 
           tree_dat = tree_enrico,
           plot_id_column = "id_plot",
           tree_id_column = "id_tree",
           weight_column = "crown_radius_95",
           res = 1)

apa_list_enrico <- 
  apa_add_agg_class(
    apa_list = apa_list_enrico,
    agg_class = "species")
  
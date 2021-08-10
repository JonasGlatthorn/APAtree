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
  apa_add_subplot_dat(
    apa_list = apa_list_enrico,
    subplot_dat = 
      list(subplot_enrico_1 = subplot_enrico),
    subplot_id_column = 
      c(subplot_enrico_1 = "id_subplot"))
  
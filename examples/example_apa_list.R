library(APAtree)
data(tree_enrico, package = "APAtree")
data(plot_enrico, package = "APAtree")

tree_enrico$height_class <- tree_enrico$height > 20

# only calculate an apa_list for two plots and with a coarse resolution of 1 m
# to save time.
apa_list_enrico <- 
  apa_list(plot_dat = subset(plot_enrico, id_plot %in% c("5.2", "8.2")), 
           tree_dat = tree_enrico,
           plot_id_column = "id_plot",
           tree_id_column = "id_tree",
           weight_column = "crown_radius_95",
           agg_class_column = c("species", "height_class"),
           res = 1,
           apa_polygon = TRUE)

apa_list_enrico

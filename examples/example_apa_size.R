library(APAtree)
data(tree_enrico, package = "APAtree")
data(plot_enrico, package = "APAtree")

tree_enrico$height_class <- tree_enrico$height > 20

# only calculate an apa_list for two plots and with a coarse resolution of 1 m
# to save time.
apa_list_enrico <- 
  apa_list(plot_dat = subset(plot_enrico, id_plot %in% c("5.2", "8.2")), 
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

library(APAtree)
data(tree_enrico, package = "APAtree")
data(plot_enrico, package = "APAtree")
data(subplot_enrico, package = "APAtree")

tree_enrico$height_class <- cut(tree_enrico$height, breaks = seq(0, 40, 4))

# only calculating an apa_list for two plots and with a coarse resolution of 1 m
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

# plot all APA-maps in an apa_list:
plot(apa_list_enrico)

# choose a different palette for plotting
plot(apa_list_enrico, pal = rainbow)

# choose a custom color scheme
color_map <- 
  data.frame(species = c("Fagus sylvatica", "Pseudotsuga menziesii"),
             species_color = c("#7d5831", "#bcc746"))
plot(apa_list_enrico, color_map = color_map)

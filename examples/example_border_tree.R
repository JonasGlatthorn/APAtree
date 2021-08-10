library(APAtree)
data(tree_enrico, package = "APAtree")
data(plot_enrico, package = "APAtree")

# only calculate an apa_list for two plots and with a coarse resolution of 1 m
# to save time.
apa_list_enrico <- 
  apa_list(plot_dat = subset(plot_enrico, id_plot %in% c("5.2", "8.2")), 
           tree_dat = tree_enrico,
           plot_id_column = "id_plot",
           tree_id_column = "id_tree",
           weight_column = "crown_radius_95",
           res = 1,
           apa_polygon = TRUE)

apa_list_enrico <- apa_border_tree(apa_list_enrico)

# Information about which tree is a border tree is stored in the border_tree
# column
table(apa_list_enrico$tree_dat$border_tree)

# Plot border trees
plot(apa_list_enrico, 
     color_map = data.frame(border_tree = c(TRUE, FALSE), 
                                   color = c("red", gray(.9))),
     critical = NA)

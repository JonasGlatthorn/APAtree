library(APAtree)
data(tree_enrico, package = "APAtree")
data(plot_enrico, package = "APAtree")
data(subplot_enrico, package = "APAtree")

# Only calculate an apa_list for two plots and with a coarse resolution of 10 m
# to save time.
apa_list_enrico <- 
  APAtree::apa_list(plot_dat = subset(plot_enrico, id_plot %in% c("5.2", "8.2")), 
                    tree_dat = tree_enrico,
                    plot_id_column = "id_plot",
                    tree_id_column = "id_tree",
                    weight_column = "crown_radius_95",
                    res = 10,
                    agg_class_column = "species",
                    subplot_dat = list(subplot = subplot_enrico),
                    subplot_id_column = c(subplot = "id_subplot"),
                    apa_properties = c("apa_size"),
                    apa_polygon = TRUE)

# removes all APA-properties
apa_list_enrico_1 <- 
  apa_drop_properties(apa_list_enrico)

# removes all aggregation classes
apa_list_enrico_2 <- 
  apa_drop_agg_class(apa_list_enrico)

# removes all subplots
apa_list_enrico_3 <- 
  apa_drop_subplot(apa_list_enrico)

# removes all polygons of APA-patches
apa_list_enrico_4 <- 
  apa_drop_polygon(apa_list_enrico)



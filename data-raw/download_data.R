rm(list = ls())
if(!"data" %in% dir()){
  dir.create("data")
}

download.file(url = "https://owncloud.gwdg.de/index.php/s/qakDIhOt16rHvfD/download",
              destfile = "data/plot_enrico.rda", method = "curl")
download.file(url = "https://owncloud.gwdg.de/index.php/s/o3BwAGkrBWhJWq8/download",
              destfile = "data/subplot_enrico.rda", method = "curl")
download.file(url = "https://owncloud.gwdg.de/index.php/s/NhwRr85GrTopvBX/download",
              destfile = "data/tree_enrico.rda", method = "curl")
# 
# lapply(FUN = load, dir("data", full.names = TRUE), envir = parent.frame(3))
# 
# library(APAtree)
# 
# apa_list_enrico <- 
#   APAtree::apa_list(plot_dat = plot_enrico, 
#            tree_dat = tree_enrico,
#            plot_id_column = "id_plot",
#            tree_id_column = "id_tree",
#            weight_column = "crown_radius_95",
#            res = .1,
#            agg_class_column = "species",
#            subplot_dat = list(subplot = subplot_enrico),
#            subplot_id_column = c(subplot = "id_subplot"),
#            apa_properties = c("ndiv", "pdiv"),
#            dis_trait_column = list("species", c("species", "height")),
#            apa_polygon = TRUE)
# 
# usethis::use_data(apa_list_enrico, overwrite = TRUE)

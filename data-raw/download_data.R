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

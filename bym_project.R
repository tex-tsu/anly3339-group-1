#Install Packages
install.packages(c("fmesher", "INLAspacetime"))
install.packages(c("tidygeocoder", "dplyr"))
install.packages(c("leaflet", "leaflet.extras"))

#Load Libraries
library(fmesher)
library(INLAspacetime)
library(tidygeocoder)
library(dplyr)


df <- read.csv("C:/Users/tex/Desktop/TXST/ANLY 3339/group_project_1/cite_and_release.csv")

#st_write(df, "C:/Users/tex/Desktop/TXST/ANLY 3339/group_project_1/cite_and_release.csv",
#         layer_options = "GEOMETRY=AS_XY")

library(leaflet)

leaflet(df) |>
  addProviderTiles("CartoDB.Positron") |>
  addCircleMarkers(
    radius = 4, stroke = FALSE, fillOpacity = 0.6,
    popup = ~paste0(USER_Arrest_Date, "<br>", USER_Offense_1)
  )
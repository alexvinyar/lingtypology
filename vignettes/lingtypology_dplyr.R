## ---- include=FALSE------------------------------------------------------
library(lingtypology)
knitr::opts_chunk$set(message= FALSE, eval=FALSE)

## ------------------------------------------------------------------------
#  new_data <- read.csv("https://goo.gl/GgscBE")
#  tail(new_data)

## ---- message= FALSE-----------------------------------------------------
#  library(dplyr)
#  new_data %>%
#    mutate(Language.name = gsub(pattern = " ", replacement = "", Language.name)) %>%
#    filter(is.glottolog(Language.name) == TRUE) %>%
#    filter(area.lang(Language.name) == "Africa") %>%
#    select(Language.name) %>%
#    map.feature()

## ---- message= FALSE-----------------------------------------------------
#  new_data %>%
#    mutate(Language.name = gsub(pattern = " ", replacement = "", Language.name)) %>%
#    filter(is.glottolog(Language.name) == TRUE) %>%
#    filter(area.lang(Language.name) == "Africa") %>%
#    select(Language.name) %>%
#    map.feature(., minimap = TRUE)

## ------------------------------------------------------------------------
#  library(leaflet)
#  map.feature(c("French", "Occitan")) %>%
#    fitBounds(0, 40, 10, 50) %>%
#    addPopups(2, 48, "Great day!")

## ------------------------------------------------------------------------
#  leaflet() %>%
#    fitBounds(0, 40, 10, 50) %>%
#    addPopups(2, 48, "Great day!") %>%
#    map.feature(c("French", "Occitan"), pipe.data = .)

## ------------------------------------------------------------------------
#  m <- leaflet() %>%
#    fitBounds(0, 40, 10, 50) %>%
#    addPopups(2, 48, "Great day!")
#  
#  map.feature(c("French", "Occitan"), pipe.data = m)

## ------------------------------------------------------------------------
#  leaflet()  %>%
#    addProviderTiles("OpenStreetMap.BlackAndWhite") %>%
#    fitBounds(0, 40, 10, 50) %>%
#    addPopups(2, 48, "Great day!") %>%
#    map.feature(c("French", "Occitan"), pipe.data = ., tile = "none")

## ------------------------------------------------------------------------
#  map.feature(c("French", "Occitan")) %>%
#    leaflet.extras::addDrawToolbar()  %>%
#    leaflet.extras::addStyleEditor()
#  map.feature(c("French", "Occitan")) %>%
#    leaflet.extras::addFullscreenControl()

## ---- eval = FALSE-------------------------------------------------------
#  map.feature(c("Adyghe", "Russian")) %>%
#    mapedit::editMap() ->
#    my_polygone
#  
#  map.feature(c("Adyghe", "Russian")) %>%
#    leaflet::addPolygons(data = my_polygone$finished)

## ------------------------------------------------------------------------
#  library(overpass)

## ------------------------------------------------------------------------
#  settlements <- '
#  area[name~"Дагестан|Ингушетия|Чечня"];
#  (node["place"~"city|village|town|hamlet"](area););
#  out;'

## ------------------------------------------------------------------------
#  query_result <- overpass_query(settlements)
#  settlement_data <- as.data.frame(query_result[, c("id", "lon", "lat", "name")])

## ------------------------------------------------------------------------
#  settlement_data <- settlement_data[complete.cases(settlement_data),]

## ------------------------------------------------------------------------
#  map.feature(language = "fake",
#              latitude = settlement_data$lat,
#              longitude = settlement_data$lon,
#              label = settlement_data$name)

## ------------------------------------------------------------------------
#  df <- wals.feature(c("1a", "20a"))

## ------------------------------------------------------------------------
#  atlas.database(languages = df$language,
#                 features = df[,c(4:5)],
#                 latitude = df$latitude,
#                 longitude = df$longitude,
#                 atlas_name = "Some WALS features",
#                 author = "Author Name")

## ------------------------------------------------------------------------
#  list.files("./atlas_Some_WALS_features/")

## ---- eval=FALSE---------------------------------------------------------
#  rmarkdown::render_site("./atlas_Some_WALS_features/")

## ---- include=FALSE------------------------------------------------------
#  unlink("./atlas_Some_WALS_features/", recursive = TRUE)

## ---- eval= FALSE--------------------------------------------------------
#  sp::coordinates(circassian) <- ~longitude+latitude
#  sp::proj4string(circassian) <- sp::CRS("+proj=longlat +datum=WGS84")
#  rgdal::writeOGR(circassian["village"],
#                  "circassian.kml",
#                  layer="village",
#                  driver="KML")


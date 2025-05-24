library(lingtypology)
library(leaflet)
library(htmlwidgets)
library(webshot2)

langs <- c("Lak", "Kubachi", "Chamalal",
           "Hunzib", "Tsakhur",
           "Lezgian", "Central Agul", "Godoberi", 
           "Gagatl", "Rutul", "Archi", "Tindi", "Tsez", "Botlikh", "Kryz", "Karata", 
           "Sanzhi", "Sirhwa-Tanty", "Xvarshi", "Hinuq", "Avar", "Bats", "Udi", "Khinalug", 
           "Southern Akhvakh", "Northern Akhvakh", "Budukh", "Bezhta", "Chechen", "Ingush", "Tabasaran", "Megeb", "Kvanada-Gimerso")
  
features <- c(rep("/d/ > {n, l}", 3), rep("/d/ > l", 2),
              rep("/d/ > n", 3), rep("not attested", 25))

colors <- c("/d/ > {n, l}" = "#1E434C",
            "/d/ > l" = "#8D230F",
            "/d/ > n" = "#0F856F",
            "not attested" = "#C99E10")

# map
m <- map.feature(
  languages = langs,
  feature = features,
  label = c("Lak", "Kubachi", "Chamalal",
            "Hunzib", "Tsakhur",
            "Lezgian", "Central Agul", "Godoberi", 
            rep("", 25)),
  label.hide = FALSE,
  title = "d-assimilation",
  minimap = TRUE,
  minimap.position = "bottomleft",
  color = colors
)

m

saveWidget(m, "d-assimilation_map.html", selfcontained = TRUE)
webshot("d-assimilation_map.html", file = "d-assimilation_map.png", cliprect = "viewport")
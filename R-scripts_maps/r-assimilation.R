library(lingtypology)
library(leaflet)
library(htmlwidgets)
library(webshot2)

langs <- c("Megeb", "Kvanada-Gimerso", "Lak", 
           "Hunzib", "Gagatl", "Rutul", "Archi", "Tindi", 
           "Tsez", "Botlikh", "Kryz", "Karata", "Central Agul", 
           "Sanzhi", "Kubachi", "Tsakhur", "Sirhwa-Tanty", "Xvarshi", "Hinuq", 
           "Avar", "Bats", "Udi", "Khinalug", "Godoberi", "Chamalal",
           "Southern Akhvakh", "Northern Akhvakh", "Budukh", "Lezgian",  
           "Bezhta", "Chechen", "Ingush", "Tabasaran")
  
features <- c(rep("/r/ > {n, l}", 3), rep("/r/ > l", 5),
              rep("/r/ > n", 5), rep("not attested", 20))

colors <- c("/r/ > {n, l}" = "#1E434C",
            "/r/ > l" = "#8D230F",
            "/r/ > n" = "#0F856F",
            "not attested" = "#C99E10")

# map
m <- map.feature(
  languages = langs,
  feature = features,
  label = c("Megeb", "Kvanada-Gimerso", "Lak", 
            "Hunzib", "Gagatl", "Rutul", "Archi", "Tindi", 
            "Tsez", "Botlikh", "Kryz", "Karata", "Central Agul",
            rep("", 20)),
  label.hide = FALSE,
  title = "r-assimilation",
  minimap = TRUE,
  minimap.position = "bottomleft",
  color = colors
)

m

saveWidget(m, "r-assimilation_map.html", selfcontained = TRUE)
webshot("r-assimilation_map.html", file = "r-assimilation_map.png", cliprect = "viewport")
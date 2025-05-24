library(lingtypology)
library(leaflet)
library(htmlwidgets)
library(webshot2)

langs <- c("Megeb", "Kubachi", "Xvarshi", "Tsez", "Gagatl", "Botlikh", "Kvanada-Gimerso", 
  "Tsakhur", "Godoberi", "Karata", "Tindi", "Chamalal", "Lak", "Kryz",
  "Southern Akhvakh", "Northern Akhvakh", "Bats", "Budukh", "Lezgian", 
  "Sanzhi", "Sirhwa-Tanty", "Hunzib", "Bezhta", "Avar", "Chechen", "Ingush", 
  "Rutul", "Archi", "Udi", "Hinuq", "Tabasaran", "Central Agul", "Khinalug"
)
  
features <- c(rep("attested", 14), rep("not attested", 19))

colors <- c("attested" = "#A64D79",
            "not attested" = "#F1C232")

# map
m <- map.feature(
  languages = langs,
  feature = features,
  label = c("Megeb", "Kubachi", "Xvarshi", "Tsez", "Gagatl", "Botlikh", "Kvanada-Gimerso", 
            "Tsakhur", "Godoberi", "Karata", "Tindi", "Chamalal", "Lak", "Kryz", 
            rep("", 19)),
  label.hide = FALSE,
  title = "assimilation: b > m",
  minimap = TRUE,
  minimap.position = "bottomleft",
  color = colors
)

m

saveWidget(m, "map.html", selfcontained = TRUE)
webshot("map.html", file = "map.png", cliprect = "viewport")
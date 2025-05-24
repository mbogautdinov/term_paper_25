library(lingtypology)
library(leaflet)
library(htmlwidgets)
library(webshot2)

langs <- c("Southern Akhvakh", "Northern Akhvakh", "Bats", "Budukh", "Lezgian", 
           "Sanzhi", "Sirhwa-Tanty", "Megeb", "Kubachi", "Xwarshi", "Hunzib", 
           "Bezhta", "Avar", "Tsez", "Gagatl", "Botlikh", "Kvanada-Gimerso", 
           "Chechen", "Ingush", "Rutul", "Tsakhur", "Archi", "Udi", "Godoberi", 
           "Karata", "Tindi", "Chamalal", "Hinuq", "Lak", "Tabasaran", 
           "Central Agul", "Kryz", "Khinalug")
  
features <- c(rep("attested", 5),
              rep("not attested", 28))

colors <- c("attested" = "#A64D79",
            "not attested" = "#F1C232")

# map
m <- map.feature(
  languages = langs,
  feature = features,
  label = c("Southern Akhvakh", "Northern Akhvakh", "Bats", "Budukh", "Lezgian", 
            rep("", 28)),
  label.hide = FALSE,
  title = "cheshirization: nasalization",
  minimap = TRUE,
  color = colors
)

m

saveWidget(m, "map.html", selfcontained = TRUE)
webshot("map.html", file = "map.png", cliprect = "viewport")
library(lingtypology)
library(leaflet)
library(htmlwidgets)
library(webshot2)

langs <- c("Sanzhi", "Megeb", "Godoberi", "Tindi", "Chamalal", "Sirhwa-Tanty", "Kubachi", "Xvarshi", "Hunzib", "Bezhta", "Avar", "Tsez", "Gagatl", "Southern Akhvakh", "Northern Akhvakh", "Botlikh", "Kvanada-Gimerso", "Bats", "Chechen", "Ingush", "Rutul", "Tsakhur", "Budukh", "Archi", "Udi", "Lezgian", "Karata", "Hinuq", "Lak", "Tabasaran", "Central Agul", "Kryz", "Khinalug")

features <- c("attested", "attested", "attested", "attested", "attested",
              rep("not attested", 28))

colors <- c("attested" = "#A64D79",
            "not attested" = "#F1C232")

# map
m <- map.feature(
  languages = langs,
  feature = features,
  label = c("Sanzhi", "Megeb", "Godoberi", "Tindi", "Chamalal", rep("", 28)),
  label.hide = FALSE,
  title = "cheshirization: labialization",
  minimap = TRUE,
  color = colors
)


saveWidget(m, "map.html", selfcontained = TRUE)
webshot("map.html", file = "map.png", cliprect = "viewport")
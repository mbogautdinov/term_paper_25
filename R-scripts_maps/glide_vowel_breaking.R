library(lingtypology)
library(leaflet)
library(htmlwidgets)
library(webshot2)

langs <- c("Sanzhi", "Xvarshi", "Avar", "Kvanada-Gimerso", "Bats", "Udi", "Karata", "Hinuq", "Khinalug", 
           "Megeb", "Kubachi", "Tsez", "Gagatl", "Botlikh", "Tsakhur", "Godoberi", "Tindi", "Chamalal", 
           "Lak", "Kryz", "Southern Akhvakh", "Northern Akhvakh", "Budukh", "Lezgian", "Sirhwa-Tanty", 
           "Hunzib", "Bezhta", "Chechen", "Ingush", "Rutul", "Archi", "Tabasaran", "Central Agul")
  
features <- c(rep("attested", 9), rep("not attested", 24))

colors <- c("attested" = "#A64D79",
            "not attested" = "#F1C232")

# map
m <- map.feature(
  languages = langs,
  feature = features,
  label = c("Sanzhi", "Xvarshi", "Avar", "Kvanada-Gimerso", "Bats", "Udi", "Karata", "Hinuq", "Khinalug", 
            rep("", 24)),
  label.hide = FALSE,
  title = "glide vowel breaking",
  minimap = TRUE,
  minimap.position = "bottomleft",
  color = colors
)

m

saveWidget(m, "glide_vowel_breaking_map.html", selfcontained = TRUE)
webshot("glide_vowel_breaking_map.html", file = "glide_vowel_breaking_map.png", cliprect = "viewport")
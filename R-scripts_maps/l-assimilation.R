library(lingtypology)
library(leaflet)
library(htmlwidgets)
library(webshot2)

langs <- c("Sanzhi", "Kubachi", "Tsakhur", "Kvanada-Gimerso", 
           "Sirhwa-Tanty", "Xvarshi", "Gagatl", "Hinuq", "Archi", 
           "Avar", "Bats", "Udi", "Karata", "Khinalug", "Megeb", "Tsez", "Botlikh", 
           "Godoberi", "Tindi", "Chamalal", 
           "Lak", "Kryz", "Southern Akhvakh", "Northern Akhvakh", "Budukh", "Lezgian",  
           "Hunzib", "Bezhta", "Chechen", "Ingush", "Rutul", "Tabasaran", "Central Agul")
  
features <- c(rep("/l/ > {n, r}", 4), rep("/l/ > n", 5),
              rep("not attested", 24))

colors <- c("/l/ > {n, r}" = "#1E434C",
            "/l/ > n" = "#8D230F",
            "not attested" = "#C99E10")

# map
m <- map.feature(
  languages = langs,
  feature = features,
  label = c("Sanzhi & Sirhwa-Tanty", "Kubachi", "Tsakhur", "Kvanada-Gimerso",
            "", "Xvarshi", "Gagatl", "Hinuq", "Archi",
            rep("", 24)),
  label.hide = FALSE,
  title = "l-assimilation",
  minimap = TRUE,
  minimap.position = "bottomleft",
  color = colors
)

m

saveWidget(m, "l-assimilation_map.html", selfcontained = TRUE)
webshot("l-assimilation_map.html", file = "l-assimilation_map.png", cliprect = "viewport")
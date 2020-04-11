library(ggplot2)
library(scales)
library(cowplot)
library(viridis)
library(viridisLite)

unemp <- read.csv("http://datasets.flowingdata.com/unemployment09.csv",
                  header = FALSE, stringsAsFactors = FALSE)
names(unemp) <- c("id", "state_fips", "county_fips", "name", "year",
                  "?", "?", "?", "rate")
unemp$county <- tolower(gsub(" County, [A-Z]{2}", "", unemp$name))
unemp$county <- gsub("^(.*) parish, ..$","\\1", unemp$county)
unemp$state <- gsub("^.*([A-Z]{2}).*$", "\\1", unemp$name)

county_df <- map_data("county", projection = "albers", parameters = c(39, 45))
names(county_df) <- c("long", "lat", "group", "order", "state_name", "county")
county_df$state <- state.abb[match(county_df$state_name, tolower(state.name))]
county_df$state_name <- NULL

state_df <- map_data("state", projection = "albers", parameters = c(39, 45))

choropleth <- merge(county_df, unemp, by = c("state", "county"))
choropleth <- choropleth[order(choropleth$order), ]

base_graph <- ggplot(choropleth, aes(long, lat, group = group)) +
  geom_polygon(aes(fill = rate), colour = alpha("white", 1 / 2), size = 0.1) +
  geom_polygon(data = state_df, colour = "white", fill = NA, size = 0.25) +
  coord_fixed() +
  theme_minimal() +
  theme(axis.line = element_blank(), axis.text = element_blank(),
        axis.ticks = element_blank(), axis.title = element_blank(),
        plot.title = element_text(size = 16, face = "bold"))

optA <- base_graph + scale_fill_viridis("", option = "A") + ggtitle("option A aka 'magma'") + theme(plot.margin = unit(c(0, 0, 0, 0), "cm"))
optB <- base_graph + scale_fill_viridis("", option = "B") + ggtitle("option B aka 'inferno'") + theme(plot.margin = unit(c(0, 0, 0, 0), "cm"))
optC <- base_graph + scale_fill_viridis("", option = "C") + ggtitle("option C aka 'plasma'") + theme(plot.margin = unit(c(0, 0, 0, 0), "cm"))
optD <- base_graph + scale_fill_viridis("", option = "D") + ggtitle("option D aka 'viridis'") + theme(plot.margin = unit(c(0, 0, 0, 0), "cm"))
optE <- base_graph + scale_fill_viridis("", option = "E") + ggtitle("option E aka 'cividis'") + theme(plot.margin = unit(c(0, 0, 0, 0), "cm"))
optF <- base_graph + scale_fill_viridis("", option = "F") + ggtitle("option F aka 'rocket'") + theme(plot.margin = unit(c(0, 0, 0, 0), "cm"))
optG <- base_graph + scale_fill_viridis("", option = "G") + ggtitle("option G aka 'mako'") + theme(plot.margin = unit(c(0, 0, 0, 0), "cm"))


png("img/sample2.png", width = 2048, height = 3000, res = 150)
plot_grid(optA, optB, optC, optD, optE, optF, optG, ncol = 2) +
  draw_text("US unemployment rate by county", x = 0.5, y = 1, size = 24, vjust = 1.5)
dev.off()

########
x=rnorm(10000); y=rnorm(10000); xy.df= data.frame(x=x, y=y)
base_graph2 <- ggplot(xy.df, aes(x, y)) +
  geom_hex() +
  theme_void() +
  theme(axis.line = element_blank(), axis.text = element_blank(),
        axis.ticks = element_blank(), axis.title = element_blank(),
        plot.title = element_text(size = 50, face = "bold"),
        legend.text = element_blank()) +
  guides(fill= guide_colorbar(barheight = 35, barwidth = 5))

optH <- base_graph2 + scale_fill_viridis("", option = "H") + ggtitle("option H aka 'anxiety'")
optI <- base_graph2 + scale_fill_viridis("", option = "I") + ggtitle("option I aka 'castle'")
optJ <- base_graph2 + scale_fill_viridis("", option = "J") + ggtitle("option J aka 'deepriver'")
optK <- base_graph2 + scale_fill_viridis("", option = "K") + ggtitle("option K aka 'forests'")
optL <- base_graph2 + scale_fill_viridis("", option = "L") + ggtitle("option L aka 'guidance'")
optM <- base_graph2 + scale_fill_viridis("", option = "M") + ggtitle("option M aka 'influenza'")
optN <- base_graph2 + scale_fill_viridis("", option = "N") + ggtitle("option N aka 'mardigras'")
optO <- base_graph2 + scale_fill_viridis("", option = "O") + ggtitle("option O aka 'vaporwave'")
optP <- base_graph2 + scale_fill_viridis("", option = "P") + ggtitle("option P aka 'toutsuite'")
optQ <- base_graph2 + scale_fill_viridis("", option = "Q") + ggtitle("option Q aka 'uc'")
optR <- base_graph2 + scale_fill_viridis("", option = "R") + ggtitle("option R aka 'utrgv'")


sample3 = plot_grid(optH,optI,optJ,optK,optL,optM,optN,optO,optP,optQ,optR, ncol = 3)
ggsave(filename = "img/sample3.png", plot = sample3, dpi = 300, width = 30, height = 40)

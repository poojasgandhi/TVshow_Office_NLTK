setwd("C:/Users/gandhip/Documents/LearnNLP")
install.packages("igraph")
library(igraph)

edges <- read.csv("network_edges.csv")
nodes <- read.csv("network_nodes.csv")

# Delete the index columns generated in Python while writing the datasets
edges$X <- NULL
nodes$X <- NULL
View(edges)
View(nodes)

# Plot the graph with default settings
g <- graph_from_data_frame(d=edges, vertices=nodes, directed=FALSE)
plot(g) 

# Set width of edge as representative of number of scenes between the two characters
E(g)$width <- E(g)$scenes_num/75

# Set vertex size as representative of total number of scenes of the character
V(g)$size <- nodes$count/80

plot(g, layout=layout_as_star, main="Star",
        vertex.color = "lightyellow",
        vertex.label.color = "blue",
        vertex.label.cex = 1.5,
        edge.color = "lightgrey")

#plot(g, layout=layout_on_grid, main="Grid")
#plot(g, layout=layout_on_grid, main="Tree")

file <- read.table("Z:/Sem_2_MCS/MachineLearning/Assignment3/iris.data.txt",sep=",")
View(file)
file.features <- file
file.features$V5 <-NULL
View(file.features)
result <- kmeans(file.features,3)
result
#K-means clustering with 3 clusters of sizes 38, 62, 50
####
"
Cluster means:
  V1       V2       V3       V4
1 6.850000 3.073684 5.742105 2.071053
2 5.901613 2.748387 4.393548 1.433871
3 5.006000 3.418000 1.464000 0.244000

Clustering vector:
  [1] 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 2 2 1 2
[55] 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 1 2 1 1 1 1 2 1
[109] 1 1 1 1 1 2 2 1 1 1 1 2 1 2 1 2 1 1 2 2 1 1 1 1 1 2 1 1 1 1 2 1 1 1 2 1 1 1 2 1 1 2

Within cluster sum of squares by cluster:
  [1] 23.87947 39.82097 15.24040
(between_SS / total_SS =  88.4 %)

Available components:
  
 # [1] "cluster"      "centers"      "totss"        "withinss"     "tot.withinss" "betweenss"    "size"        
# [8] "iter"         "ifault"  "

plot(file.features[c("V1","V2")],col = result$cluster)
plot(file.features[c("V1","V2")],col = file$V5)



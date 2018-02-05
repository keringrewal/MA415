A2010 <- read.csv("BP Apprehensions 2010(1).csv", header = TRUE, stringsAsFactors = FALSE)

rownames(A2010) <- A2010[,1]

A2010[,1]

A2010 <- subset(A2010, select = -c(Sector))
rownames(A2010)

A2010 <- rbind(A2010, colSums(A2010))

rownames(A2010)

A2010 <- cbind(A2010, rowSums(A2010))

rownames(A2010)

x <- -length(rownames(A2010))

rownames(A2010) <- c(rownames(A2010)[x], "Total")
A2010 <- cbind(A2010, rowSums(A2010))
colnames(A2010) <- c(colnames(A2010)[x], "Total")

barplot(A2010[1:9, 13], names.arg = rownames(A2010)[1:9])

barplot(A2010[1:9, 13],
        names.arg = rownames(A2010)[1:9],
        las = 2,
        axisnames = TRUE,
        main = "2010 Border Patrol Apprehension by Sector",
        border = "blue",
        col = "yellow")

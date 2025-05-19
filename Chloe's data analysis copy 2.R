file.choose()
setwd("~/Desktop/Chloe's project/")

# https://docs.google.com/spreadsheets/d/1pBOHhxlgd2-NxSDHBYJG1_n4Pl6YxBzBSOxekU4_EqQ/edit?gid=0#gid=0
growth <- read.csv("Vanessa.growth.csv")

View(growth)

head(growth)
dim(growth)




with( growth,
  boxplot(weight_g ~ as.factor(instar))
)

with( growth,
  plot(y = weight_g, x = days_since_hatching, col = as.factor(instar))
)
abline(lm(weight_g ~ days_since_hatching, data = growth))

with( growth,
      boxplot(weight_g ~ paste0(days_since_hatching,"d L",instar))
)

with( growth,
      boxplot(weight_g ~ paste0(instar,"L d",days_since_hatching))
)

library(beeswarm)

with( growth,
      beeswarm(
        weight_g ~ paste0("L",instar), 
        col = as.factor(paste0(days_since_hatching,"d"))
      )
)


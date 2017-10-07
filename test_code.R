# expand.grid  - sorting with 2 vars 
set.seed(123)
rnorm(10)

# the same results 

round(3.5)
## to closest even

library(data.table)
dt <- data.table(id = rep(c(1:90), 2), condition = rep(c("test", "control"), each = 90), color = rep(c("red", "green", "blue"
), each = 3),  
                 comb = c(runif(90) + rnorm(90, 3, 10), runif(90) + rnorm(90, 9, 10)))

# create NA
dt[sample(180, 180*0.15, replace = FALSE), comb := NA]

t.test(comb ~ condition, dt[color == "green"])

power.t.test(n = 90, delta = 6, sd = 10, sig.level = 0.05)

dt <- read.csv("RS.csv")

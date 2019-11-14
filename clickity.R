library(gutenbergr)
library(tidytext)
library(dplyr)


# https://cran.r-project.org/web/packages/gutenbergr/vignettes/intro.html
# setwd("~/Desktop/nanogenmo_2019")

jekyll_hyde <- gutenberg_download(43)
jekyll_hyde2 <- gutenberg_download(43)

# [, 2] is indicated 2nd column, the 2 means this is being applied to a column
jekyll_hyde2[, 2] <- apply(jekyll_hyde2[, 2], 2, function(x) gsub(".", "click", x))

write_lines(jekyll_hyde2$text, "test.txt")

# next steps
jekyll_hyde3 <- jekyll_hyde %>% mutate(nchar = nchar(text))

newlist <- c("click", "clickity", "clickity-clack", "clickity-clackity ")

# next: need to divide nchar to find out how many clickity clackitys and modulo or whatever to know how to end the line



library(readr)
library(stringr)
library(gutenbergr)
library(tidytext)

# https://cran.r-project.org/web/packages/gutenbergr/vignettes/intro.html
setwd("~/Desktop/nanogenmo_2019")

jekyll_hyde <- gutenberg_download(43)
jekyll_hyde2 <- gutenberg_download(43)

# jekyll_hyde2[, 2] <- apply(jekyll_hyde2[, 2], 2, function(x) gsub("his", "click", x))
jekyll_hyde2[, 2] <- apply(jekyll_hyde2[, 2], 2, function(x) gsub(".", "click", x))

write_lines(jekyll_hyde2$text, "test.txt")

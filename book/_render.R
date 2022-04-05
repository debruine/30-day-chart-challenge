# render the book as HTML and open in a browser
xfun::in_dir("book", bookdown::render_book("index.Rmd", "bookdown::bs4_book"))
browseURL("docs/index.html")

# copy data directory to docs
R.utils::copyDirectory(
  from = "book/data",
  to = "docs/data",
  overwrite = TRUE,
  recursive = TRUE)


# add fonts
library(emojifont)
library(showtext)
font_add(family = "Avenir",
         regular = "/System/Library/Fonts/Avenir.ttc")

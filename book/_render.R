# render the book as HTML and open in a browser
xfun::in_dir("book", bookdown::render_book("index.Rmd",
                                           "bookdown::bs4_book",
                                           quiet = TRUE))
browseURL("docs/index.html")

# copy data directory to docs
R.utils::copyDirectory(
  from = "book/data",
  to = "docs/data",
  overwrite = TRUE,
  recursive = TRUE)

# copy image directory to docs
R.utils::copyDirectory(
  from = "book/images",
  to = "docs/images",
  overwrite = TRUE,
  recursive = TRUE)


# add fonts example
library(emojifont)
library(showtext)

font_add_google(name = "Playfair Display", family = "Playfair")
font_add(family = "Playfair",
         regular = "~/Library/Fonts/PlayfairDisplay-VariableFont_wght.ttf")

showtext_auto()

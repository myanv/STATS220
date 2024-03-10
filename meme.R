library(magick) # Imports the magick library

# Sets up the upper half of separator block
separator1 <- image_resize(image_read("https://i.imgur.com/H2N5NGz.jpeg"), "300 x 350")

# Creates a blank black rectangle, then add text to it positioned in the middle 
separator2 <- image_blank(height = 250, width = 300, color = "black") %>%
  image_annotate(text = "It was NOT",  gravity = "center", size = 45, color = "white")

# Appends the two separators to make a seperator block stacked on top of each other
separator = image_append(c(separator1, separator2), stack = TRUE)

# Sets up frames 1 - 4
frameOne <- image_resize(image_read("https://i.imgur.com/2wV8PqX.jpeg"), "300 x 350")
frameTwo <- image_resize(image_read("https://i.imgur.com/GdNY6Fr.png"), "300 x 350")
frameThree <- image_resize(image_read("https://i.imgur.com/h2B0Vkr.jpeg"), "300 x 350")
frameFour <- image_resize(image_read("https://i.imgur.com/A0fmeST.png"), "300 x 350")
# Creates the meme by stacking frames and separator on top of each other
# meme <- image_append(c(frameOne, frameTwo, frameOne, frameThree, separator, frameFour), stack = TRUE)
# image_write(meme, "my_meme.png")

# Creates the frame-by-frame animation with 0.5 FPS 
animation <- image_animate(c(frameOne, frameTwo, frameOne, frameThree, separator, frameFour), fps = 0.5)
# image_write(animation, "my_animation.gif")
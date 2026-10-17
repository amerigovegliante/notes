#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index
#import "../templates/please_note.typ": please_note

#set text(font: "Google Sans", size: 12pt)

#set page(margin: 0cm)

#frontpage(
  title: "Computer Vision & Cognitive Systems",
  professors: "Prof. Ballan Lamberto",
  year: "2026/2027",
  background1: rgb(255, 209, 220),
  background2: rgb(177, 156, 217)
)

#show: style

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Image Filtering and Edges

== Images and Color Spaces

Images can have three different type of colorations:

- *Binary*: It's basically a grid of just 0s an 1s where 0 means white and 1 means black.

#figure(
  image("asset/computer-vision-1.png", width: 60%),
  caption: [
    Binary image grid explanation
  ]
)
- *Gray Scale*: Works similarly to a binary image with the difference being that each tile of the grid has a value in the range $[0,255]$ that represents the intensity.

#figure(
  image("asset/computer-vision-2.png", width: 60%),
  caption: [
    Grayscale image grid explanation
  ]
)

- *Color*: Each tile has a defined color representation model (called *color space*) that can be different depending on the context of the image. 

  - These color spaces are for example: RGB / sRGB, HSV, Lab, YCbCr, CMYK, ...

    - HSV (Hue, Saturation, Value) corresponds better to how people experience colors.
#figure(
  image("asset/computer-vision-3.png", width: 60%),
  caption: [
    RGB Image explanation
  ]
)

== Image Sampling

When we zoom-in into an image we capture pixels that, because they need to be represented into a computer, they generate sampling error.

#figure(
  image("asset/computer-vision-4.png", width: 50%),
  caption: [
    Sampling error explanation
  ]
)

- *Resolution*: It's a sampling parameter, defined as dots per inch (dpi) or, more generally, as the spatial pixel density.

#figure(
  image("asset/computer-vision-5.png", width: 50%),
  caption: [
    DPI schematics
  ]
)

- *Image Histograms*: They are very simple image representations that capture the global distribution of gray levels in a given image.

#figure(
  image("asset/computer-vision-6.png", width: 65%),
  caption: [
    Grayscale image histogram
  ]
)

#figure(
  image("asset/computer-vision-7.png", width: 65%),
  caption: [
    Color image historgram
  ]
)
\
\ 
It can also be done to samples inside of an image, which gives a better idea to color distribution based on location.

#figure(
  image("asset/computer-vision-8.png", width: 70%),
  caption: [

    Grayscale histograms on different samples example
  ]
)

A useful case of usage of image histograms is done to compare two images.

#figure(
  image("asset/computer-vision-9.png", width: 60%),
  caption: [
    Image histogram comparison use case
  ]
)
#pagebreak()
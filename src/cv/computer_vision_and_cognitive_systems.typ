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

= Machine Learning Basics
#pagebreak()

= Introduction
#pagebreak()

= Image Filtering and Edges
#pagebreak()

= Convolution
#pagebreak()

= Keypoints and Local Visual Features
#pagebreak()

= Bag of Visual Words
#pagebreak()

= Convolutional Neural Networks
#pagebreak()

= Object Detection and Segmentation
#pagebreak()

= Predictive Vision
#pagebreak()

= 3D Vision-Language Models
#pagebreak()

= Embodied AI and Visual Navigation
#pagebreak()
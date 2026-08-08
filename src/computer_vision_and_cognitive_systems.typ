#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index
#import "../templates/please_note.typ": please_note

#show: style

#frontpage(
  title: "Computer Vision \n & \n Cognitive Systems",
  professors: "Prof. Ballan Lamberto",
  year: "2026/2027",
  background1: rgb(255, 209, 220),
  background2: rgb(177, 156, 217)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
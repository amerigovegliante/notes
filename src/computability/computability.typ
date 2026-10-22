#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#set text(font: "Google Sans", size: 12pt)

#set page(margin: 0cm)

#frontpage(
  title: "Computability",
  professors: "Prof. Baldan Paolo",
  year: "2026/2027",
  background1: rgb(253, 253, 150),
  background2: rgb(119, 221, 119)
)

#show: style

#pagebreak()

#index()

#pagebreak()
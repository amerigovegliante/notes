#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
  title: "Computability",
  professors: "Prof. Baldan Paolo",
  year: "2026/2027",
  background1: rgb(253, 253, 150),
  background2: rgb(119, 221, 119)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)  

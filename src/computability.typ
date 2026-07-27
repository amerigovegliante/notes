#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
  title: "Computability",
  professors: "Prof. Baldan Paolo",
  year: "2026/2027",
  background: rgb(219, 152, 101)
)

#pagebreak()

#show: index

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)  
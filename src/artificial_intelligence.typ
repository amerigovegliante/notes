#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
  title: "Artificial Intelligence",
  professors: "Prof. Sperduti Alessandro",
  year: "2026/2027",
  background: rgb(103, 191, 207)
)

#pagebreak()

#show: index

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
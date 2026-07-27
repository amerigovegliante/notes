#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
  title: "Machine Learning",
  professors: "Prof. Aiolli Fabio",
  year: "2026/2027",
  background: rgb(212, 187, 91)
)

#pagebreak()

#show: index

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
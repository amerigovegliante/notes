#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index
#import "../templates/please_note.typ": please_note

#show: style

#frontpage(
  title: "Explainable AI",
  professors: "Prof. Confalonieri Roberto",
  year: "2026/2027",
  background1: rgb(255,192,103),
  background2: rgb(253, 253, 150)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
#import "templates/frontpage.typ": frontespizio

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
)

#set text(font: "FreeSans", size: 12pt)

#set heading(numbering: "1.")

#frontespizio(
  titolo: "Computability",
  docente: "Prof. Baldan Paolo",
  anno: "2026/2027",
  background: rgb(219, 152, 101)
)

#pagebreak()

#set page(numbering: "i")
#counter(page).update(1)
#outline(title: "Index")

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)  
#import "templates/frontpage.typ": frontespizio

#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2cm, left: 2.5cm, right: 2.5cm),
)

#set text(font: "FreeSans", size: 12pt)

#set heading(numbering: "1.")

#frontespizio(
  titolo: "Economics & Management of Innovation",
  docente: "Prof.ssa Sedita Silvia Rita, Prof. Maghssudipour Amir",
  anno: "2026/2027",
  background: rgb(114, 191, 113)
)

#pagebreak()

#set page(numbering: "i")
#counter(page).update(1)
#outline(title: "Index")

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
  title: "Economics & Management of Innovation",
  professors: "Prof.ssa Sedita Silvia Rita, Prof. Maghssudipour Amir",
  year: "2026/2027",
  background: rgb(114, 191, 113)
)

#pagebreak()

#show: index

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
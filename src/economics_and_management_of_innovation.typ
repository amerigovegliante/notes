#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontpage(
  title: "Economics \n and \n Management of Innovation",
  professors: "Prof.ssa Sedita Silvia Rita, Prof. Maghssudipour Amir",
  year: "2026/2027",
  background1: rgb(119, 221, 119),
  background2: rgb(180, 217, 239)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
  title: "Methods & Models for Combinatorial Optimization",
  professors: "Prof. De Giovanni Luigi, Prof. Auricchio Gennaro",
  year: "2026/2027",
  background: rgb(130, 159, 209)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Mathematical Models
= Heuristics
= Linear Programming and the Simplex Method
= Duality
= Column Generation Methods
= Branch and Bound
= Cutting Plane Method
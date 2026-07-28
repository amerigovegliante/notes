#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontpage(
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

= Introduction
#pagebreak()

= Algorithms and Existence of Non-Computable Functions
#pagebreak()

= URM Computability
#pagebreak()

= Decidable Predicates
#pagebreak()

= Computability on other Domains
#pagebreak()

= Generation of Computable Functions
#pagebreak()

= Other Approaches to Computability
#pagebreak()

= Primitive Recursive Functions
#pagebreak()

= Enumeration of Programs
#pagebreak()

= Cantor Diagonalization Technique
#pagebreak()

= Parametrisation Theorem
#pagebreak()

= Universal Function
#pagebreak()

= Recursive Sets
#pagebreak()

= Rice Theorem
#pagebreak()

= Recursively Enumerable Sets
#pagebreak()

= Rice-Shapiro Theorem
#pagebreak()

= First Recursion Theorem
#pagebreak()

= Second Recursion Theorem
#pagebreak()
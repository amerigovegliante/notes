#let title = "title"
#let professors = "professors"
#let year = "2024/2025"
#let author = "Vegliante Amerigo"
#let email = "name@email.com"
#let background = rgb(0,0,0)

#let frontespizio(
  title: title,
  professors: professors,
  year: year,
  author: author,
  background: background
) = {
  rect(
    width: 100%,
    height: 100%,
    fill: background,
    stroke: black
  )[
    #align(center+horizon)[
        #v(0.3cm)
      
      #align(center)[
        #text(size: 28pt, weight: "bold")[#title]
      ]
      
      #v(0.3cm)
      
      #align(center)[
        #text(size: 16pt, style: "italic")[#author]
      ]
      
      #v(0.3cm)
      
      #align(center)[
        #line(length: 40%, stroke: 0.5pt + black)
      ]
      
      #v(0.3cm)
      
      #align(center)[
        #text(size: 12pt)[#professors]
      ]

      #align(center)[
        #text(size: 12pt)[#year]
      ]
    ]
  ]
}
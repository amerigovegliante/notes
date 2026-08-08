
#let title = "title"
#let professors = "professors"
#let year = "2024/2025"
#let author = "Vegliante Amerigo"
#let email = "name@email.com"
#let background1 = rgb(0,0,0)
#let background2 = rgb(0,0,0)
#let image_path = "image.png"

#let frontpage(
  title: title,
  professors: professors,
  year: year,
  author: author,
  background1: background1,
  background2: background2
) = {
  rect(
    width: 100%,
    height: 100%,
    fill: gradient.linear(background1, background2, angle: 45deg),
    stroke: black+0.05cm
  )[
    #align(center+horizon)[
      #rect(
        inset: 0.5cm,
        fill: white,
        stroke: black,
      )[
        #align(center)[
          #text(size: 28pt, weight: "bold")[#title]
        ]
        
        #align(center)[
          #text(size: 16pt, style: "italic")[#author]
        ]
        
        #align(center)[
          #line(length: 40%, stroke: 0.5pt + black)
        ]
            
        #align(center)[
          #text(size: 12pt)[#professors]
        ]

        #align(center)[
          #text(size: 12pt)[#year]
        ]      
      ]
    ]
  ]
}
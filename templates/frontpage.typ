
#let title = "title"
#let professors = "professors"
#let year = "2024/2025"
#let author = "amerigo.vegliante@studenti.unipd.it"
#let email = "name@email.com"
#let background1 = rgb(0,0,0)
#let background2 = rgb(0,0,0)
#let image_path = "image.png"

#set page(
    margin: (top: 0cm,bottom: 0cm, left: 0cm, right: 0cm)
  )

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
    stroke: rgb(255,255,255)+0cm
  )[
    #align(center+horizon)[
      #rect(
        inset: 1cm,
        fill: color.linear-rgb(255, 255, 255, 160),
        stroke: black+0cm,
        radius: 0.5cm,
      )[
        #align(center)[
          #text(size: 24pt, weight: "bold")[#title]
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

  pagebreak()

  align(center + horizon)[
    #par()[
      _This document is not a to be taken as a "everything you need for the exam" type of document nor a substitute to professor's materials, books and similar, I will not care about complaints for exams not passed given that I published this material for free and no one forced me to._
    ]
  ]
}
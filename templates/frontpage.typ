#set page(
  paper: "a4",
  fill: white
)

#set heading(numbering: "1.")

#let titolo = "Titolo degli Appunti"
#let docente = "Nome del Docente"
#let facolta = "Nome della Facoltà"
#let universita = "Nome dell'Università"
#let anno = "2024/2025"
#let autore = "Vegliante Amerigo"
#let email = "nome@email.it"
#let background = rgb(0,0,0)

#let frontespizio(
  titolo: titolo,
  docente: docente,
  anno: anno,
  autore: autore,
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
        #text(size: 28pt, weight: "bold")[#titolo]
      ]
      
      #v(0.3cm)
      
      #align(center)[
        #text(size: 16pt, style: "italic")[#autore]
      ]
      
      #v(0.3cm)
      
      #align(center)[
        #line(length: 40%, stroke: 0.5pt + black)
      ]
      
      #v(0.3cm)
      
      #align(center)[
        #text(size: 12pt)[#docente]
      ]

      #align(center)[
        #text(size: 12pt)[#anno]
      ]
    ]
  ]
}
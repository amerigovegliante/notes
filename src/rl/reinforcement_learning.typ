#import "/templates/frontpage.typ" : frontpage
#import "/templates/style.typ": style
#import "/templates/index.typ": index

#set text(font: "Google Sans", size: 12pt)

#set page(margin: 0cm)

#frontpage(
  title: "Reinforcement Learning",
  professors: "Prof. Gian Antonio Susto",
  year: "2026/2027",
  background1: rgb(100, 200, 255),
    background2: rgb(255, 140, 170),    
)

#show: style

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Multi-armed Bandits

#pagebreak()

= Markov Decision Processes

#pagebreak()

= Dynamic Programming

#pagebreak()

= Monte Carlo Methods

#pagebreak()
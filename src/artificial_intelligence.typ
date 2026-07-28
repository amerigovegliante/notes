#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index
#import "../templates/please_note.typ": please_note

#show: style

#frontpage(
  title: "Artificial Intelligence",
  professors: "Prof. Sperduti Alessandro",
  year: "2026/2027",
  background1: rgb(152, 251, 203),
  background2: rgb(253, 253, 150)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Agents

#pagebreak()

= Problem Solving
#pagebreak()

= Informed Search
#pagebreak()

= Adversarial Search
#pagebreak()

= Propositional Logic
#pagebreak()

= First-Order Logic
#pagebreak()

= Uncertainty
#pagebreak()

= Artificial Neural Networks
#pagebreak()

= Reinforcement Learning
#pagebreak()

= Constraint Satisfaction Problems
#pagebreak()

= Natural Language Processing
#pagebreak()

= Basic Computer Vision
#pagebreak()

= Multimodal Large Language Models
#pagebreak()

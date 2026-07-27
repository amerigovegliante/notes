#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
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
= Problem Solving
= Informed Search
= Adversarial Search
= Propositional Logic
= First-Order Logic
= Uncertainty
= Artificial Neural Networks
= Reinforcement Learning
= Constraint Satisfaction Problems
= Natural Language Processing
= Basic Computer Vision
= Multimodal Large Language Models
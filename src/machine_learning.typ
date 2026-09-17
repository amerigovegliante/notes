#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#set text(font: "Google Sans", size: 12pt)

#set page(margin: 0cm)

#frontpage(
  title: "Machine Learning",
  professors: "Prof. Aiolli Fabio",
  year: "2026/2027",
  background1: rgb(255, 150, 79),
  background2: rgb(255, 105, 97)
)

#show: style

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Math for Machine Learning
#pagebreak()

= Supervised Learning
#pagebreak()

= PAC Learning, Generalization and SRM
#pagebreak()

= Decision Trees
#pagebreak()

= Neural Networks
#pagebreak()

= Gradient Descent Algorithm
#pagebreak()

= Generalized Linear Models and SVM
#pagebreak()

= Preprocessing
#pagebreak()

= Practical Issues
#pagebreak()

= Representation Learning
#pagebreak()

= Bayesian Learning
#pagebreak()

= Ensemble Learning
#pagebreak()

= Clustering
#pagebreak()

= Recommender Systems
#pagebreak()

= Laboratories
#pagebreak()

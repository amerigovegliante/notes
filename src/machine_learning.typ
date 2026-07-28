#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontpage(
  title: "Machine Learning",
  professors: "Prof. Aiolli Fabio",
  year: "2026/2027",
  background1: rgb(255, 150, 79),
  background2: rgb(255, 105, 97)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Math for Machine Learning
#pagebreak()

= Supervised Learning
#pagebreak()

= PAC, Generalization and SRM
#pagebreak()

= Decision Trees
#pagebreak()

= Neural Networks
#pagebreak()

= Linear Models and SVM
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
#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
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
= Supervised Learning
= PAC, Generalization and SRM
= Decision Trees
= Neural Networks
= Linear Models and SVM
= Preprocessing
= Practical Issues
= Representation Learning
= Bayesian Learning
= Ensemble Learning
= Clustering
= Recommender Systems
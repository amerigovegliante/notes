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

= Supervised Learning

- #underline()[*Supervised Learning*]: It's a type of machine learning paradigm where an algorithm learns to map input data to a specific output based on labeled data, it's called _supervised_ because to test its effectiveness we give him test data of which we already know the answer but he does not.

- *Input*: $x in X$
- *Output*: $y in Y$

  - *Classification*:
  
    - *Binary*: $Y = {-1,+1}$
    - *Multi-class* $Y = {1,...,m}$
  
  - *Regression*: $Y equiv RR$

- *Oracle / Nature*:
  
  - $f: X --> Y$ deterministic, it's ideal and *unknown*.
  - $P(x)$ or $P(y|x)$ (the stochastic version), still unknown.

- *Data*: $"Dataset" = {(x_1,y_1),...,(x_n,y_n)}$
  
  - Typically *independent* and *identically distributed*.
  
    - #underline()[*Note*]: Time-series aren't independent and free of *concept drift* (the hidden relationship between $X$ and $Y$ is lost over time).

- *Hypothesis Space*: $H equiv {h | h : X --> Y}$
  
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

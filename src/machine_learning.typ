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

== Probability

- #underline[*Random Experiment*]: It's and experiment whose outcome is not predictable with certainty in advance.

- #underline[*Probability*]: When an experiment is repeated under the same conditions, for any event $E$, the proportion of time that the outcome is in E approaches some costant value which is the probability of the event noted as $P(E)$. You could also say that the probability is a _degree of belief_ in the occurence of the event $E$.

- #underline[*Axioms of Probability*]: a series of statements that are certainly true in the world of probability.

  - $0 <= P(E) <= 1$.
    - $E_1$ certain $<==> P(E_1) = 1$.
    
    - $E_2$ never happening $<==> P(E_2) = 0$.
  
  - Given $S$ a sample space of all possible outcomes, $P(S) = 1$.
  - If $E_i, i = 1,...,n$ are mutually exclusive we have $P(union.big^n_(i=1) E_i) = sum^n_(i=1) P(E_i)$.
  - $P(E^c) = 1 - P(E)$, where $E^c$ denotes the complement of E.
  - $P(E union F) = P(E) + P(F) - P(E inter F)$ given $E inter F != emptyset.zero$.

- #underline[*Conditional Probability*]: is the likelihood of an event $E$ happening based on the knowledge that another related event $F$ has already occurred.

  - $P(E|F)$ is the probability of the occurrence of event E given that F occurred and is given as $P(E|F) = P(E inter F) / P(F)$.

  - *Bayes Formula*: $P(F|E) = (P(E|F)P(F))/P(E)$.

  - $E$ and $F$ are independent when $P(E|F) = P(E)$, also $P(E inter F) = P(E)P(F)$.

- #underline()[*Mean*]: The mean of a random variable $X$ is the average value of $X$ in a large number of experiments defined as $E[X] = sum_i x_i P(x_i)$ and given $a,b in RR$ we have the following properties:
  - $E[a X + b] = a E[X] + b$.
  - $E[X + Y] = E[X] + E[Y]$.

  - $E[g(X)] = sum_i g(x_i)P(x_i)$.
  - $E[X^n] = sum_i x^n_i P(X_i)$, which is the _nth moment_.

- #underline()[*Variance*]: The variance measures how much $X$ varies around the expected value. If $mu = E[X]$, the vartiance is defined with the following formula $"Var"(X) = E[(X - mu)^2] = E[X^2] - mu^2$. Also, usually for variance we use the symbol $sigma^2$, $sigma(X) = sqrt("Var"(X))$ is known as the *standard deviation*.

- #underline()[*Distributions*]: we consider both discrete cases and continuous cases.
  
  - *Discrete Case*:
    - *Bernoulli*: Given that output 1 is success 0 is failure and $p$ is the probability of success. We have:
      - $P(X=1)=p$.

      - $P(X=0)=1-p$.
      - $E[X]=p$.
      - $"Var"(X) = p (1-p)$.

#align(center)[#image("../assets/bernoulli.png", width: 85%)]
\
    - *Binomial*: If $N$ identical independent Bernoulli trials are made, the random variable $X$ that represent the number of successes that occur in N trials is binomial distributed.
      - $P(X = i) = binom(N,i) p^i (1-p)^(N-i), i = 1,...,N$.
      - $E[X] = N p$.

      - $"Var"(X) = N p (1-p)$.

#align(center)[#image("../assets/binomial.png", width: 85%)]
\
  - *Continuous Case*:
    - *Uniform*: In the interval $[a,b]$.
      - $p(x) = 1/(b-a)$ if $a <= x <= b$ and $p(x)=0$ otherwise.
      - $E[X] = (a+b)/2$.

      - $"Var"(X)=(b-a)^2/12$.

#align(center)[#image("../assets/uniform.png", width: 80%)]
\
    - *Gaussian*: Uses $mu$ and $sigma^2$, $N(mu, sigma^2)$:

      - $p(x) = 1/sqrt(2 pi sigma) exp(-(x-mu)^2/(2 sigma ^ 2)), -infinity < x < +infinity$

#image("../assets/gaussian.png")

#pagebreak()

== Vectors and Matrices

- #underline()[*Vector*]: A n-dimensional vector $x in RR^n$ is a collection of $n$ scalar values arranged in a column: #align(center)[$vec(x_1, x_2, ..., x_n)$]Given $x,z in RR^n$ and $q in RR$ we have the following operations:

  - *Sum*: $vec(x_1, x_2, ..., x_n) + vec(z_1, z_2, ..., z_n) = vec(x_1+z_1, x_2+z_2,...,x_n+z_n)$.

  - *Multiplication by scalar*: $q vec(x_1, x_2,..., x_n) = vec(q x_1, q x_2,...,q x_n)$.

  - *Dot product*: $x dot z = sum _i x_i z_i$.

    - *Geometrical Interpretation*: $x dot z = |x| |z| cos(theta)$ where $theta$ is the angle between the two vectors.
  - *Length of a vector*: $ |x| = sqrt(sum _i x^2_i)$.

- #underline()[*Binary Vector*]: Now we consider the case of a n-dimensional vector $x in {0,1}^n$, we can use it to describe a set inside a universe of $n$ elements where $x$ is the set containing the elements corresponding to the ones in the vector.
  - *Cardinality of the set*: $|x|^2$

  - *Cardinality of the intersection*: $x dot z$ where $x,z in {0,1}^n$
  - *Projection of $x$ on $z$*: $x_z = frac((x dot z),|z|) frac(z, |z|) = (frac(x dot z, z dot z))z = alpha z$
    - $alpha = P(x|z)$

- #underline()[*Matrix*]: A matrix $A in RR^(m times n)$ is a collection of scalar values arranged in a rectangle of $m$ rows and $n$ columns. #align(center)[$mat(a_11, a_12, ..., a_(1n);a_21, a_22, ..., a_(2n); ..., ..., ..., ...; a_(m 1),a_(m 2),..., a_(m n))$]
  - $a_(i j) = [A]_(i j)$

  - Given $x in RR^n$, we can also say that $x in RR^(n times 1)$.

  - *Sum*: $[A + B]_(i j) = [A]_(i j) + [B]_(i j) = a_(i j) + b_(i j)$
  - *Product*: $[A B]_(i j) = sum^k _(q=1) a_(i q) b_(q j)$ given $A in RR^(m times k)$ and $B in RR^(k times n)$.
    - Generally $A B != B A$
  
  - *Transpose*: The transpose of $A in RR^(n times m)$ is a matrix $A^T in RR^(m times n)$ defined: #align(center)[$[A^T]_(i j) = A_(i j)$]
    - $(A^T)^T = A$
    - $(A B)^T = B^T A^T$
    - If $A = A^T$ then A is said to be *symmetric*.
  - *Identity*: It's a diagonal square (necessarily) matrix $I in RR^n$ like this #align(center)[$mat(0,0,...,1; 0, ...,1,0;...,...,...,...;1,0,...,0)$]
  - *Inverse*: The inverse of $A in RR^(n times n)$ is a matrix $A^(-1)$ such that #align(center)[$A A^(-1) = I = A^(-1) A$]
    - $A^(-1)$ exists only if:
      - The rank of the matrix is maximal.
      - $det(A) != 0$.
    - If $A$ is rectangular and the resulting square matrix $A A^T$ is invertible then we have that #align(center)[$A^dagger = A^T (A A^T)^(-1)$] is the *pseudo-inverse* matrix that satisfies $A A^dagger = I$.
  - *Positive Semi-definite Matrix*: A symmetric matrix $A in RR^(n times n)$ with the property that $x^T A x >= 0$ for any vector $x in RR^n$. Its eigenvalues are all $>= 0$.
  - *Positive Definite Matrix*: A symmetric matrix $A in RR^(n times n)$ with the property that $x^T A x > 0$ for any vector $x in RR^n$.Its eigenvalues are all $> 0$.

    - #underline()[*Note*]: They are always invertible.
- *Linear Problems*: Given a matrix $A in RR^(n times n)$ and a vector $b in RR^n$, a linear problem is the problem of finding $x in RR^n$ such that: #align(center)[$A x = b$] We are looking for the linear combination of the columns of $A$ giving $b = sum_i x_i a_i$ as result. The solution is #align(center)[$x = A^(-1) b$]
  - #underline()[*Note*]: To solve this, the time complexity is $O(n^3)$. 

#pagebreak()

== Optimization Problems

- #underline[*Optimization*]: Maximizing or minimizing a real function $f: RR^n --> RR$ with respect to some variables, possibly to some costraints. That is, finding the vector $x$ such that $f(x)$ is maximal or minimal.
  - *Discrete Optimization*: variables have discrete values.

  - *Continuous Optimization*: variables have real values. 
  #align(center)[$f(x) = g(x + beta h(x))$]
  - #underline()[*Note*]: The higher $beta$ is higher the influence of $h(x)$ will be, the lower the value the higher the influence of $g(x)$.

  - *Linear Optimization Problem*: #align(center)[#grid(columns: 2, column-gutter: 10pt, $min_x$, $f(x) = a dot x$, v(0.6cm),$$,$s.t.$,$A x <= b \ B x = d$)]

  - *Quadratic Optimization Problem*: #align(center)[#grid(columns: 2, column-gutter: 10pt, $min_x$, $f(x) = x^T A x + b x$, v(0.6cm),$$,$s.t.$,$B x <= c$)]

  If the matrix $A$ is definite positive then the function $f(x)$ is convex and the optimization problem admits a unique minimum.
#pagebreak()  

= Supervised Learning

- #underline()[*Supervised Learning*]: It's a type of machine learning paradigm where an algorithm learns to map input data to a specific output based on labeled data, it's called _supervised_ because to test its effectiveness we give him test data of which we already know the answer but he does not.
#rect(
  inset: 0.5cm,
  radius: 1cm,
  stroke: 0.1cm,
  fill: gradient.linear(luma(225), luma(175), angle: 45deg)
)[
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
]
  
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

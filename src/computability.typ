#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#set text(font: "Google Sans", size: 12pt)

#set page(margin: 0cm)

#frontpage(
  title: "Computability",
  professors: "Prof. Baldan Paolo",
  year: "2026/2027",
  background1: rgb(253, 253, 150),
  background2: rgb(119, 221, 119)
)

#show: style

#pagebreak()

#index()

#pagebreak()

#let k_finite_function = (
  ```py
    def g(n):
      if n <= k:
        return 1
      else:
        return 0
  ```
)

#let k_infinite_function = (
  ```py
    def g(n):
      return 1
  ```
)

#set page(numbering: "1")
#counter(page).update(1)  

= Algorithms and Existence of Non-Computable Functions
\
- *Effective Procedure*: It's a step by step method that solves a problem or evaluates a mathematical function. An effective procedure has a set of four strict formal requirements:
  
  - *Finite Instruction Set*: Defined by a finite list of clear, explicit instructions.
  
  - *Deterministic Execution*: Each step can be executed deterministically by a machine without relying on guesswork or insight.

  - *Finite Steps*: The computation must _halt_ in a finite number of steps.

  - *Correct Output*: When the procedure halts, the result must be correct and unambiguous.
\
- *Computable Function*: It's a mathematical function $f : NN ^k --> NN$ for which there exists an effective procedure that calculates the correct output for any input the function's domain.

  - *Examples of Computable Functions*:
    
    - $"GCD"(x,y) = "Greatest Common Divisor"$ it's solvable by the Euclid's Algorithm.

    - $f(n) = cases(1 "n is prime",0 "otherwise")$

    - $g(n) = n^"th" "digit in" pi$

    - $h(n) = cases(1 "if" pi "includes at least" n "digits 5 in a row",0 "otherwise")$

  - *Examples of Functions of Unknown Computability*:

    - $q(n) = cases(1 "if in" pi "there are exactly n consecutive digits 5",0 "otherwise")$
\
- *Why is $h(n)$ Computable and $q(n)$ is unknown?*:

  - *How do we know that $h(n)$ is Computable?* 
      
      Given the function $g(n) = cases(1 "if" pi "includes at least" n "digits 5 in a row", 0 "otherwise")$
    
      This function has the following property: $g(n) = 1 ==> forall n' <= n " " g(n') = 1$.
    
      We can take $k = sup{n | "there are exactly" n "digits 5 in a row in" pi}$ which gives us two possibilities:

      - k is finite
      #align(horizon)[
        #grid(
        columns: (1fr, 1fr, 1fr),
        k_finite_function,
        $g(n) = cases(1 "if" n <= k,0 "otherwise")$,
        image("asset/computability-1.png")
        )
      ]

      - k is infinite

      #align(horizon)[
        #grid(
        columns: (1fr, 1fr, 1fr),
        k_infinite_function,
        $g(n) = cases(1 "if" n <= k,0 "otherwise")$,
        image("asset/computability-2.png")
        )
      ]

      All of this tells us that a procedure exists, we don't know which one is it but it exists which is sufficient to say that $h(n)$ is computable.

#pagebreak()
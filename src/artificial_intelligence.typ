#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#set text(font: "Google Sans", size: 12pt)

#set page(margin: 0cm)

#frontpage(
  title: "Artificial Intelligence",
  professors: "Prof. Sperduti Alessandro",
  year: "2026/2027",
  background1: rgb(152, 251, 203),
  background2: rgb(253, 253, 150)
)

#show: style

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Agents
\
- *Agent*: An agent is a #underline()[perceiving] and #underline()[acting] entity, in our case we study *rational agents* which is an agent that:

  - Achieve its goals as much as possible given the avaiable information.

  - Searches to maximize the satisfaction of its needs by exploiting avaiable or acquirable information.
  If we abstract its definition an agent is a _function_ of all the possible sequences of perceptions $P^*$ to (eligible) actions $A$.
  $ f: P^* --> A $
  For obvious reasons, among all the classes of environments and tasks, we look for the single agent (or class of agents) that has the best performances.

  - #underline()[*Note*]: For computational limitations _perfect rationality_ is unachievable, so our job here is to design the best program given the resources we have at hand.

  #figure(
    image("asset/artificial-intelligence-1.png", width: 50%),
    caption: [
      Structure of an agent
    ],
  )
  The *agent function* maps from all the possible sequences of perceptions $P^*$ to actions $A$.  

  - #underline()[*EXAMPLE*]: Vacuum Cleaner Agent.
    - _Perceptions_: ${"A", "B"}$

    - _Actions_: ${"Left", "Right", "Suck", "NoOp"}$

    - _Status_: ${"Clean", "Dirty"}$
    #figure(
      image("asset/artificial-intelligence-2.png", width:50%),
      caption: [
        Vacuum cleaner agent example
      ]
    )
  #figure(
  table(
    columns: (1fr, 0.5fr),
    inset: 10pt,
    align: horizon,   
    fill: (col, row) => if row == 0 { rgb("f0f0f0") } else { none },
    table.header(
      [*Percept Sequence*], [*Action*],
    ),
    $
      ["A, Clean"]\
      ["A, Dirty"]\
      ["B, Dirty"]\
      ...\
    $,
    $
      "Right"\
      "Suck"\
      "Left"\
      ...  
    $
  ),
  caption: [
    Vacuum cleaner agent example
  ]
)

```py
  def reflex_vacuum_agent(location, status):
    if status == "Dirty":
      return "Suck"
    elif location == "A":
      return "Right"
    elif location == "B":
      return "Left"
```
  
- *Rationality*: It's a measure of performances set for an agent that evaluates the sequence of perceptions, it can be different based on the agent goalas and its context.\ A *rational agent* chooses any action that maximizes the expected value of the performance measure #underline()[based on the sequence of perceptions obtained up to the current instant.]

  - Rationality $==>$ Exploration, Learning, Autonomy.

- *Performance Environment Actuators Sensors (PEAS)*: It's a framework that we use to describe and evaluate rational agents because it defines how an agent interact with its environment. \ We can use it to design agents that can reach their goals effectively.
  - *Performance Measure*: It defines how the success of an agent is evaluated, determines wether the agent's actions are achieving the desired goal and guides the agent into making better decisions.

  - *Environment*: Everything surrounding an agent that can be observed or interacted with by the agent while performing its task. It can change overtime.

  - *Actuators*: They are the components that the agent uses uses to perform actions and interact with the evironment. They convert decisions into actions.

  - *Sensors*: They are the components that collect informations from the environment and provide them to the agent in order for it to make appropriate decisions.
      
After all this we can say that agents can be summarized with this simple formula:

$ "Agent = Architecture + Program" $

Where:
  - *Architecture*: It's the physical infrastructure supporting the execution of the program.

  - *Program*: Is the entity that take the current percept as input from the sensors and return an action to the actuators.

  ```py
  percepts = []                      # A sequence, initially empty.
  table = [...]                         # Table of actions, indexed by percept sequences. 
  def table_driven_agent(percept):

    global percepts, table

    percepts.append(percept)
    action = lookup(percepts, table)
    return action
  ```

== Types of Agents & Environments
\
- *Simple Reflex Agents*: They are simple agent designs that are built on the concept of making choices based on immediate enviromental stimuli.

  - They are based on a set of predefined rules or conditional action pairs that dictate how the agents responds to unique sensory inputs.

  - They have a minimalist approach to decision making in order to prioritize simplicity and efficiency.

  - They don't have internal memory meaning they have only access to the present sensory input and base the action entirely on that.

  - #underline()[*PROBLEM*]: If the environment is _partially observable_ it can fail, to avoid that it needs to track past perceptions (internal state).

  #figure(
    image("asset/artificial-intelligence-3.png", width: 50%),
    caption: [
      Simple Reflex Agent Schema
    ]
  )

- *Model-Based Reflex Agents*: They are a more "complex" version of Simple Reflex Agents which, as we said before, are agents that only have the context of the current perception, Model-based Reflex Agents also mantain an internal representation (called *model*) of the environment which allows them to anticipate the consequences of their actions.

#figure(
  image("asset/artificial-intelligence-4.png", width: 50%),
  caption: [
    Model-based Reflex Agent Schema
  ]
)
- *Goal-based Agents*: They are agents designet to plan, execute, and adjust their actions dynamically to meet predefined goals. It's a useful approach in enviroments where adaptability is fundamental.
  - *Goal*: It's a specific objective for the agent to achieve, the goal itself also provides clear directions for the agent's decisions and actions.
  This type of agent has three different phases:

  - *Planning*: It's the phase of determining the sequence of actions required to achieve the goal.

  - *Execution*: It's the phase where the agent actually execute the planned actions.
  
  - *Adaptation*: During execution the agent might encounter obstacles or changes, this phase is required in order for the agent to modify its plans and actions dynamically in order to still achieve its goal.

#figure(
  image("asset/artificial-intelligence-5.png", width: 50%),
  caption: [
    Goal-based Agent Schema
  ]
)

- *Utility-based Agents*: They are agents that have the ability to make rational decisions based on a utility function and are designed to optimize their performance by maximizing utility measures.

  - *Utility Function*: A utility function $U(s)$ maps each state $s$ to real numbers that indicate the utility of the state. Its purpose is to quantify the agent's preferences so that it can evaluate different states and since this agent's objective is to maximize utility it will choose actions that lead to the most desirable outcomes.

#figure(
  image("asset/artificial-intelligence-6.png", width: 50%),
  caption: [
    Utility-based agent schema
  ]
)

- *Learning Agents*: It's an entity designed to autonomously interact with its environment, it acquires informations from it and adapt its behaviour to improve performances over time. They can dynamicaly change their decision-making processes depending on experience instead of previously determined instructions.

#figure(
  image("asset/artificial-intelligence-7.png", width: 50%),
  caption: [
    Learning agent schema
  ]
)

We can represent the environment in many ways:

- *Atomic Representation*: Each state of the environment is indivisible.

- *Factored Representation*: Splits up each state into a fixed set of variables that can have a value.

- *Structured Representation*: Objects and their relationships with each other can be described explicitly. 

#figure(
  image("asset/artificial-intelligence-8.png", width: 70%),
  caption: [
    Enviroment representations
  ]
)

#pagebreak()

= Problem Solving
\
_How do we solve problems by #underline[searching]?_

```py
seq = []                              # An action sequence, initially empty.
state = State()                       # Description of the current "world" state.
goal = None                           # The goal, being a goal-based agent, initially empty.
problem = Problem()                   # A Problem formulation.

def simple_problem_solving_agent(percept):

  global seq, state, goal, problem

  state = UpdateState(state, percept)
  if seq.isEmpty() == True:
    goal = FormulateGoal(state)
    problem = FormulateProblem(state, goal)
    seq = Search(goal)
    if seq == "Failure":
      return None
  action = First(seq)
  seq = Rest(seq)
  return action
```
\
- #underline()[*EXAMPLE*]: We are on holiday in Romania, we are currently in Arad, tomorrow we have to catch a flight in Bucharest.
  - *Goal Formulation*: Be in Bucharest.
  - *Problem Formulation*:
    - _States_: The various romanian cities.
    - _Actions_: The drive between cities.
  - *Solution Structure*: Sequence of cities crossed from Arad to Bucharest.

#figure(
  image("asset/artificial-intelligence-9.png", width: 80%),
  caption: [
    Simple graph of states and actions for the romania driving example
  ]
)

_How do we formulate this problem formally?_

- *Problem Formulation*: A problem is defined by four items:
  - *Initial State*: The starting point from which the agent starts to work towards its goal. In this case it will be "Arad".
  - *Successor Function*: it's a function $ E(x) : "Actions" --> "States" $ In our case it would look like something like this $ E("Arad") = { ("Arad" --> "Zerind", "Zerind"),...} $ #underline()[Alternatively] we can define separately:

    - Actions that can be performed in a given state.
    - The effect obtained by applyig each action.
  - *Goal Test*
    - *Explicit*: $x = "at Bucharest"$

    - *Implicit*: $"NoDirt"(x)$

  - *Path Cost*: Something that gets added up along the computation. In our case it could be _sum of distances_, _number of actions executed_, ... .
    - *Step Cost*: Is defined as $ c(x,a,y) >= 0 $ where:

      - $x$ is the _current state_.
      - $a$ is the _chosen action_.
      - $y$ is the _resulting state_. 
  - *Solution*: It's a sequence of actions that leads from the _initial state_ to the _goal state_.

As we know, the real world is very complex to formulate into a problem with states, actions etc. which is why we are going to abstract the _State Space_ (e.g. Arad instead of specific locations in Arad), the _Action Space_ (e.g. simple _city-to-city_ routes instead of _street-to-street_ specifically) and _Solution_ (where a set of state must be a solution applicable to the real world).

- #underline()[*EXAMPLE*]: 
#figure(
  image("asset/artificial-intelligence-10.png", width: 65%),
  caption: [
    Driving in Romania Iterations example
  ]
)

== Tree Search and Graph Search
\
- *Tree Search*: It's a _strategy_ that explores a problem's *state space* by organizing potential paths into a tree structure where the root is the initial state and the branches represent sequences of actions leading to new states. It uses a collection called *frontier* which acts as the to-do list of nodes to visit.
  - *Amnesia*: This algorithm has no memory of the states it has already visited which means that, if two different action sequences lead to the same state, they will be treated as two separated branches.

```py
def tree_search(problem):
    # 1. Create a starting node using the intial state and place it into the frontier
    frontier = create_frontier()
    frontier.add(make_node(problem.initial_state()))
    
    while True:
        # 2. Check if there's anywhere left to explore
        if frontier.is_empty():
            return None # Failure
            
        # 3. Remove a node from the frontier for consideration
        node = frontier.pop()
        
        # 4. Check if we've reached the goal
        if problem.is_goal(node.state):
            return node # Success (returns node to extract path)
            
        # 5. Expand the node and add all resulting children to the frontier
        for child in node.expand(problem):
            frontier.add(child)
```
\
- *Graph Search*: It's an upgraded version of the tree search designed for state spaces that fit comfortably into the form of general graphs, it works similarly to its ancestor with the difference that it also has a memory structure called *explored set* to prevent the amnesia problem.
- *Parsimony*: Thanks to the implementation of the explored set and a duplicate checking mechanism it refuses to re-expand states it has already handled.
- *Separation*: It's the way the graph search algorithm divides the overall state space into two regions, explored and unexplored.
  $ "StateSpace" = "ExploredRegion" union "UnexploredRegion" $
  \
```py
def graph_search(problem):
    # 1. Initialize the frontier with a node containing the initial state
    initial_node = Node(problem.initial_state())
    frontier = [initial_node]
    
    # 2. Initialize the explored set to be empty
    explored = set()
    
    while True:
        # 3. Check if there's anywhere left to explore
        if len(frontier) == 0:
            return None # Failure
            
        # 4. Remove a node from the frontier for consideration
        node = frontier.pop()
        
        # 5. Check if we've reached the goal
        if problem.is_goal(node.state):
            return node # Success (returns node to extract path)
            
        # 6. Add the node to the explored set
        explored.add(node.state)
        
        # 7. Expand the node and add children only if not in frontier or explored
        for child in node.expand(problem):
            state_in_frontier = any(n.state == child.state for n in frontier)
            if child.state not in explored and not state_in_frontier:
                frontier.append(child)
```
\
\
- *Nodes vs State*: A *state* is the representaion of a physical configuration and a *node* is a data structure constituting part of a search tree and it includes *parent*, *children*, *depth* and *path cost* $g(x)$.

#figure(
  image("asset/artificial-intelligence-11.png", width: 45%),
  caption: [
    Node vs State example
  ]
)

== Uninformed Search Strategies

=== Breadth First Search (BFS)

It's a search strategy in which we explore the state space *level by level*, it widens its net outward from the root.
  - *Frontier*: It's a *FIFO Queue* where the oldest nodes are the ones explored first.
  - *How it works*:
    - _Start from root_.
    - _Explore all immediate children (Depth 1)._
    - _Move to Depth 2._
    - _Repeat._

#figure(
  image("asset/artificial-intelligence-12.png", width: 65%),
  caption: [
    BFS schema
  ]
)

=== Uniformed-Cost Search (UCS)

It's mostly known as the *Dijkstra's Algorithm* and it's a search strategy designed to find the cheapest path to a goal, unlike BFS that expands the shallowest node UCS expands the cheapest node.
  - *Frontier*: It's a *Priority Queue* where the nodes are ordered based on the cost spent to arrive there from the start (the function $g(n)$) which is memorized by every node.
  - *How it works*:
    - _Pop the node from the frontier with lowest $g(n)$._
    - _If it's the goal, stop and return the solution._
    - _If not, expand it, calculate the path cost for each child and add them to the frontier._
    - _Repeat._
#figure(
  image("asset/artificial-intelligence-13.png", width: 45%),
  caption: [
    Dijkstra's algorithm schema
  ]
)

=== Depth First Search (DFS)

It's the exact opposite approach of BFS, DFS goes as deep as possible in a branch before backtracking.
  - *Frontier*: It's a *LIFO Stack*, which means that the most recently generated child is the one being explored first.
  - *How it works*:
    - Start from root and dive down from first child.
    - It dives to that child's first child until a dead end.
    - When all children have been explored or a dead end has been reached we backtrack to the most recent junction.
#figure(
  image("asset/artificial-intelligence-14.png", width: 65%),
  caption: [
    DFS schema
  ]
)

=== Iterative Deepening Search (IDS)

It's a search strategy designed to get the memory usage of DFS and the completeness of BFS.
  - *How it works*: Instead of running a single massive search it runs a series of *Depth-Limited Searches (DLS)* increasing the depth limit along the way.
    - _*$"DL" = 0$*: Only check the root._
    - _*$"DL" = 1$*: Go down to only the root's children level checking if the goal is there, if it fails increment depth._
    - _*Repeat* until the goal is found._
#figure(
  image("asset/artificial-intelligence-15.png", width: 75%),
  caption: [
    IDS schema
  ]
)

=== Bidirectional Search

It's a search strategy that divides the search into two separate searches:
  - *Forward Search*: Start from the initial state and moves forward to the goal.
  - *Backward Search*: Start from the goal state and move backward to the initial state.
  The search will stop when the two meet in the middle.
  - *How it works*:
    - _Initialize two frontier for the two searches._
    - _Alternate expansion for both searches._
    - _If a collision is detected form a solution from start to goal._
    - _Repeat._
#figure(
  image("asset/artificial-intelligence-16.png", width: 75%),
  caption: [
    Bidirectional Search schema
  ]
)


=== Evaluation Table

#figure(
    table(
      columns: (1fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr, 0.9fr, 1fr),
      inset: 5pt,
      align: horizon,
      fill: (col, row) => if row == 0 or col == 0 { rgb("f0f0f0") } else { none },
      table.header(
        [*Criterion*], [*BFS*], [*UCS*],[*DFS*], [*DLS*], [*IDS*],[*Bidirectional*]
      ),
      [*Completeness*],
      [YES],
      [YES],
      [NO],
      [NO],
      [YES],
      [YES],
      [*Time*],
      [$ O(b^d)$ ],
      [$ O(b^(1 + floor(C^* / epsilon))) $],
      [$ O(b^m) $],
      [$ O(b^l) $],
      [$ O(b^d) $],
      [$ O(b^(d/2)) $],
      [*Space*],
      [$ O(b^d) $],
      [$ O(b ^ (1 + floor(C^* / epsilon))) $],
      [$ O(b m) $],
      [$ O(b l) $],
      [$ O(b d) $],
      [$ O(b^(d/2)) $],
      [*Optimality*],
      [YES],
      [YES],
      [NO],
      [NO],
      [YES],
      [YES],
    ),
    caption: [
      Search Strategies Evaluation
    ]
)

- Knowing that:

  - $b$ is the *branching factor*.
  - $d$ is the depth of the *shallowest solution*.
  - $m$ is the *maximum depth* of the search tree.
  - $l$ is the *depth limit*.

#pagebreak()

== Informed Search Strategies

It's a type of searching strategies where we exploit information on the problem, called *heuristics*, beforehand.

=== Best-first Search

It's the first informed search strategy we see and it relies on a *heuristic function* $h(n)$ which estimates the coast from the current node $n$ to the closest goal.
  - *Greedy Choice*: At every step the algorithm decides to expand the node that has the lowest heuristic function value.

  - *Difference from Dijkstra*: The heuristic function looks forward into the graph to estimate the cost while dijkstra looks backward to calculate the "price" already spent.

#figure(
  image("asset/artificial-intelligence-17.png", width: 70%),
  caption: [
    Best-first search example schema
  ]
)

=== A\* Search

It's the gold standard for pathfinding and graph traversal algorithms combining the exact cost tracking of Dijkstra's Algorithm and the heuristics of Best-first Search. It works following its *core formula*: $ f(n) = g(n) + h(n) $ where:

  - *Past Cost $g(n)$*: The exact accumulated cost inherited from the Dijkstra's Algorithm.

  - *Future Cost Estimation $h(n)$*: It's the estimated cost heuristic inherited from Best-first Search.

  - *Total Estimation $f(n)$*: It represent the #underline()[estimated] cheapest cost through node $n$ to the goal.
  \
  - *How it works*:
    - _Put the starting node into the frontier (a Priority Queue) ordered by the $f(n)$ value._
    - _Pop the node with lowest $f(n)$ off the frontier._
    - _If it's the goal state, return the solution._
    - _If not, generate child nodes and expand like this:_

      - _$g("child") = g("parent") + "step cost"$_
      - _$f("child") = g("child") + h("child")$_
      _And then add them to the frontier._
    - _Repeat._

  - *Admissible Heuristics*: The heuristic #underline()[never] overestimate the actual cost to reach the goal. $ h(n) <= h^* (n) $ where $h^*(n)$ is the absolute cheapest cost.  
#figure(
  image("asset/artificial-intelligence-18.jpg", width: 70%),
  caption: [
    $A^*$ search example
  ]                               
)
\
  - *Theorem*: $A^*$ is optimal.

    - *Proof*: Let's suppose that some suboptimal goal $G_2$ has been generated and is in the queue, also let $n$ be an unexpanded node on a shortest path to an optimal goal $G$.
    
  #figure(
    image("asset/artificial-intelligence-19.png", width: 40%),
    caption: [
      Optimality of $A^*$ tree search
    ]
  )
  \
  $
    f(G_2) &= g(G_2) && "since" h(G_2) = 0 \
    &> g(G) && "since" G_2 "is suboptimal" \
    &>= f(n) && "since" h "is admissible"
  $ Since $f(G_2) > f(n)$, $A^*$ will never select $G_2$ for expansion.
#align(right)[$square.filled$]

- _Does this proof work also for Graph Search?_ \ \ *NO*, because the previous proof relies on the basis that every node path is explored #underline()[independently] which is ok for tree search but for graph search is not because it introduces the *explored set* to avoid duplicate work, which creates a major problem for $A^*$:
  
  - *The Reopening Problem*: _What if a suboptimal path reaches a state first and expands it pushing that state into the explored set?_ Well, if the actual optimal path to that state is discovered later it will be thrown away and the algorithm will possibly miss the true optimal solution.

    - *Solution*: Use *consistent* heuristics.

    - *Consistent heuristics*: A heuristics function is consistent if $ h(n) <= c(n,a,n') + h(n') $ and if a heuristics is consistent then we have 
    $
      f(n') &= g(n') + h(n')\
      &= g(n) + c(n,a,n') + h(n')\
      &>= g(n) + h(n)\
      &= f(n)
    $ which, if we look at it geometrically, is basically saying that the heuristics function in a graph has to always be compliant to the *triangle inequality principle*.

    #figure(
      image("asset/artificial-intelligence-20.png", width: 20%),
      caption: [
        Geometrical visualization of consistent heuristics
      ]
    )

  - *Lemma*: $A^*$ expands nodes in order of increasing $f$ value, it gradually adds "*$f$ contours*" of nodes where che contour $i$ has all nodes with *$f = f_i$* where *$f_i < f_(i+1)$*.
  
#figure(
  image("asset/artificial-intelligence-21.png", width: 80%)
)

  - *Properties*:

  #figure(
    table(
      columns: (1.1fr,1.1fr,1.1fr,0.7fr),
      inset: 5pt,
      align: horizon,
      fill: (col, row) => if row == 0 { rgb("f0f0f0") } else { none },
      table.header(
        [*Completeness*], [*Time*], [*Space*],[*Optimality*]
      ),
      [YES, unless there are infinitely many nodes with $f <= f(G)$],
      [Exponential in [relative error in $h times$ length of solution]],
      [Keeps all nodes in memory],
      [YES],
    ),
    caption: [
      $A^*$ properties table
    ]
) 
\
  - #underline()[*NOTE*]: _$A^*$ is not only optimal but also no other algorithm is guaranteed to expand fewer nodes than $A^*$, in fact any algorithm that doesn't expand all nodes with $f(n)<C^*$ ($C^*$ being the total cost of the optimal solution path) runs the risk of missing the optimal solution._

As we can understand though $A^*$ has a major memory issue being exponential in space and it could happen that the memory is filled up before finding a solution.

=== Iterative Deepening A\* (IDA\*)

To solve the memory issue we have a twist to the classic $A^*$ algorithm. This  alternative behaves just like $A^*$ but it adds a *cutoff* value initialized at 0 and updated during the execution of the algorithm.
  - *How it works*:
    - _We initialize the cutoff value at 0 for $f$_.
    - _During an iteration a node $n$ is not inserted in the queue if its $f$ value  is larger than the cutoff value._
    - _When the queue is emptied and no goal was found we start a new iteration and we update the cutoff value._ 
$ "cutoff"_(i+1) = min{f(n) | f(n) > "cutoff"_i} $

=== Recursive Best-first Search (RBFS)

It's an algorithm designed to mimic the behaviour of standard best-first search while using linear space like depth first search. The way it does that is by keeping track of the *best alternative path* avaiable from any ancestor and, if the current path starts looking worse than the alternative it aborts said path and tries the alternative.

- *How it works*:
  - _Every recursive call keeps a ``` f-limit``` argument that represent the maximum ``` f-value``` it's allowed to explore before aborting._
  - *Expanding and Updating*:
    - _Generates the children of the current node and calculates their ``` f-value``` and sorts them by it._
    - _If the best child has a ``` f-value``` greater than the current ``` f-limit``` then we abort and go back to the parent which now knows that that is a "bad" path._
    - _If a child is explored then its ``` f-value``` is updated to reflect the best ``` f-value``` of its descendants._


```py
def recursive_best_first_search(problem):
  return rbfs(problem, make_node(problem.initialState(), inf))

def rbfs(problem, node, f_limit):
  if problem.goalTest(node.State()):
    return Solution(node)
  successors = []
  for action in problem.Actions(node.State()):
    successors.append(Node(problem, node, action))
  if successors.isEmpty():
    return ("Failure", inf)
  for s in successors:
    s.f = max(s.g + s.h, node.f)
  while True:
    best = min_fvalue(successors)
    if best.f > f_limit:
      return ("Failure", best.f)
    alternative = min_fvalue(successors - best)
    result, best.f = RBFS(problem, best, min(f_limit, alternative))
    if result != "Failure":
      return result
```

#figure(
  image("asset/artificial-intelligence-22.png", width: 80%),
  caption: [
    RBFS example
  ]
)

- #underline()[*NOTE*]: RBFS is like A\*, it's optimal if the heuristic function $h(n)$ is consistent.

#figure(
    table(
      columns: (1.1fr, 1.1fr, 1.1fr, 0.7fr),
      inset: 5pt,
      align: horizon,
      fill: (col, row) => if row == 0 { rgb("f0f0f0") } else { none },
      table.header(
        [*Completeness*], [*Time*], [*Space*], [*Optimality*]
      ),
      [YES \ *(if step costs $> epsilon > 0$)*],
      [Exponential \ $O(b^d)$ in worst case],
      [Linear \ $O(b \cdot d)$],
      [YES \ *(if heuristic is admissible)*],
    ),
    caption: [
      RBFS (Recursive Best-First Search) properties table
    ]
)

=== Simplified MA\*

It behaves just like A\* but to proceed it needs to remove from the queue an old node to make space for the new node.
  - It removes the node with the worst ``` f-value```.
  - The ``` f-value``` of the removed node is backed up to its parent node.
  - The parent node will eventually be expanded when al the other paths are worst.

  #figure(
    image("asset/artificial-intelligence-23.png", width: 70%),
    caption: [
      Simplified MA\* example 1
    ]
  )

  #figure(
    image("asset/artificial-intelligence-24.png", width: 70%),
    caption: [
      Simplified MA\* example 2
    ]
  )
- *Special Case*: _What happens if all the nodes in the queue have the same ``` f-value```?_ Well, SMA\* should not select the same node for deletion *and* expansion.
  - *Policy*:
    - _Delete the oldest worst node and expand the newest best node and if these coincide then the current search tree must be a single path from root to the node that fills all of memory, so unless the node is a goal then we can discard it because even if it is on a optimal solution path we get that that solution isn't reachable with the avaiable information._

- *Properties*:
  - *Complete*: Only if the solution can be kept in memory.
  - *Optimal*: If any optimal solution is reachable, otherwise it returns the best reachable solution.

=== Heuristics Construction

An admissible heuristics never overestimates the true cost of the goal. A way to construct admissible heuristics is by #underline()[relaxing the rules] of the original problem.

- *Core Principle*:
  - *Relaxation*: Removing constraints from a problem makes it easier to solve.
  - *Rule*: The optimal solution cost of a relaxed problem is never greater than the optimal cost of the real. 

$ "Cost"_"Relaxed" <= "Cost"_"Real" $

- *Example: Travelling Salesman Problem*: We need to find the shortest tour visiting all cities exactly once.

#figure(
  image("asset/artificial-intelligence-25.png", width: 70%),
  caption: [
    Traveling Salesman Problem example
  ]
)

We compute the *minimum spanning tree* of the graph in $O(n^2)$ to find a lower bound on the shortest tour.

== Local Search and Iterative Improvement

Unlike path based algorithms, local search is used when the path taken to reach the solution doesn't matter but only the final goal configuration.

- *State Space*: Set of complete configurations.
- *Objective*: Find an optimal configuration.
- *Operation*: It starts with a single current state and iteratively moves to neighbouring states to improve its quality.

- *Advantages*:
  - *Space*: constant, $O(1)$.
  - *Online & Offline Execution*: It is suitable for continuous real-time execution in dynamic environments.

=== Hill-Climbing



=== Simulated Annealing

=== Local Beam Search

=== Genetic Algorithm

#pagebreak()
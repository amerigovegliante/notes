#let style(body) = {
  set heading(numbering: "1.")
  set page(
    margin: (top: 1cm,bottom: 1cm, left: 1cm, right: 1cm)
  )
  set par(justify: true)
  set text(size: 14pt)

  show math.equation.where(block: false): it => {
  if it.has("label") and it.label == <stop-equation-recursion> {
    it
  } else {
    [$display(it)$ <stop-equation-recursion>]
  }
}

  body
}


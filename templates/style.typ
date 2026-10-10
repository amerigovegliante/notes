#let style(body) = {
  set heading(numbering: "1.")
  set page(
    margin: (top: 1cm,bottom: 1cm, left: 1cm, right: 1cm)
  )
  set par(justify: true)
  set text(size: 10pt)

show math.equation.where(block: true): set text(size: 13pt)

  show raw.where(block: true): it => block(
    fill: luma(245),
    stroke: 0.5pt + luma(180),
    inset: 1em,
    radius: 5pt,
    width: 100%,
    above: 1em,
    below: 1em,
    it
  )

  show math.equation.where(block: false): it => {
  if it.has("label") and it.label == <stop-equation-recursion> {
    it
  } else {
    [$display(it)$ <stop-equation-recursion>]
  }
}

  body
}
#let style(body) = {
  set heading(numbering: "1.")
  set page(margin: (top: 1.5cm, bottom: 1.5cm, left: 1.5cm, right: 1.5cm))
  set par(justify: true)
  set text(size: 11pt)

  // Formule display: leggermente più grandi del testo
  // in style.typ
show math.equation.where(block: true): set text(size: 13pt)

  // Codice con sfondo e bordi
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

  body
}
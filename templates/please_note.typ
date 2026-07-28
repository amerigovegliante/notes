#let please_note(text) = {
  rect(
    radius: 0.5cm,
    fill: gradient.linear(white,gray,angle:45deg),
    stroke: black,
    inset: 0.5cm
  )[
    #underline(offset: 0.1cm)[*Please Note*]: #emph()[#text]
  ]
}
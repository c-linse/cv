// Shared theme (colors, page/text setup) and reusable layout components.
// Section content files (skills.typ, experience.typ, ...) import from here;
// main.typ imports this too to compose the page layout.

#let accent = rgb("#2f6fbe")
#let dark = rgb("#3a3a3c")
#let track = rgb("#e3e3e3")
#let muted = rgb("#6b6b6b")

// Applied in main.typ via `#show: cv-style`.
#let cv-style(body) = {
  set document(title: "Christoph Linse — CV", author: "Christoph Linse")
  set page(paper: "a4", margin: (x: 1.7cm, y: 1.6cm))
  set text(font: "Liberation Sans", size: 9.3pt, fill: rgb("#222222"))
  set par(justify: false, leading: 0.58em)
  set list(marker: text(fill: accent)[•], indent: 2pt, body-indent: 6pt)
  body
}

#let heading2(title) = block(above: 13pt, below: 8pt)[
  #text(weight: "bold", size: 12.5pt)[#title]
  #v(3pt)
  #box(width: 26pt, height: 2.4pt, fill: accent)
]

#let pill(txt) = box(fill: accent, radius: 2pt, inset: (x: 7pt, y: 3.5pt))[
  #text(fill: white, size: 7.6pt, weight: "bold")[#txt]
]

#let skillbar(fraction) = grid(
  columns: (fraction * 1fr, (1 - fraction) * 1fr),
  column-gutter: 0pt,
  rect(height: 5pt, width: 100%, fill: accent, radius: 1.5pt),
  rect(height: 5pt, width: 100%, fill: track, radius: 1.5pt),
)

#let skill(name, label, fraction) = block(above: 0pt, below: 9pt)[
  #grid(columns: (1fr, auto), text(weight: "bold", size: 9pt)[#name], text(fill: muted, size: 7.6pt)[#label])
  #v(3pt)
  #skillbar(fraction)
]

#let contact-item(body) = block(above: 0pt, below: 7pt)[
  #text(fill: accent)[▸] #h(4pt) #body
]

#let job(title, place, date, body) = block(above: 11pt, below: 11pt, breakable: true)[
  #grid(columns: (1fr, auto), align(horizon)[#text(weight: "bold", size: 10pt)[#title]], align(horizon + right)[#pill(date)])
  #text(fill: accent, weight: "bold")[#place]
  #v(5pt)
  #body
]

#let edu(date, title, place, body) = block(above: 11pt, below: 11pt, breakable: true)[
  #text(fill: accent, weight: "bold", size: 8.5pt)[#date]
  #v(2pt)
  #text(weight: "bold", size: 9.5pt)[#title] \
  #text(fill: accent, size: 8.7pt)[#place]
  #v(5pt)
  #body
]

#let cert(title, body) = block(above: 11pt, below: 11pt, breakable: true)[
  #text(fill: accent, weight: "bold", size: 9.5pt)[#title]
  #v(5pt)
  #body
]

#let tech-list(..groups) = list(..groups.pos().map(g => [*#g.at(0):* #g.at(1)]))

// Two equal-width columns, used for the page-2+ body.
#let two-col(left, right) = grid(columns: (1fr, 1fr), column-gutter: 26pt, left, right)

// Thin vertical rule between the two body columns on pages 2+.
#let divider-background = place(top + center, line(angle: 90deg, length: 100% - 3.2cm, stroke: 0.4pt + rgb("#d5d5d5")))

// Shared styles for the 202609 resume layout.
// Weights follow the reference PDFs: Light body, Medium dates, Bold titles.
#let ink = rgb("#141b28")
#let navy = rgb("#2c3e50")
#let muted = rgb("#697482")

#let section-title(title) = {
  v(7pt)
  text(size: 15.5pt, weight: "bold", fill: navy, title)
  v(-3.5pt)
  line(length: 100%, stroke: 0.5pt + rgb("#D7DEE8"))
  v(3pt)
}

// Title + location on the first row, organisation/credential + date on the second.
#let entry-header(title, sub, date, location, title-size: 10.8pt) = {
  grid(
    columns: (1fr, auto),
    row-gutter: 3pt,
    align: (left, right),
    text(size: title-size, weight: "bold", title), text(size: 9.5pt, weight: "light", location),
    text(size: 9.5pt, weight: "light", fill: muted, sub), text(size: 9.5pt, weight: "medium", fill: muted, date),
  )
  v(-1pt)
}

// "Label - text" bullet. The label carries the context, the text carries scale and impact.
#let labeled-bullet(label, body) = [#text(weight: "bold")[#label -] #body]

#let tech-row(category, items) = {
  grid(
    columns: (106pt, 1fr),
    text(size: 9.8pt, weight: "bold", category),
    text(size: 9.8pt, items),
  )
}

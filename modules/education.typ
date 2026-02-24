#import "@preview/brilliant-cv:3.1.2": cv-section

#let education-entry(society, degree, date, location) = {
  table(
    columns: (1fr, 32%),
    inset: 0pt,
    stroke: none,
    gutter: 6pt,
    align: (x, y) => if x == 1 { right } else { auto },
    table(
      columns: (1fr,),
      inset: 0pt,
      stroke: none,
      row-gutter: 2pt,
      text(size: 10pt, weight: "bold", society),
      text(size: 8pt, fill: rgb("#5B6572"), degree),
    ),
    table(
      columns: (1fr,),
      inset: 0pt,
      stroke: none,
      row-gutter: 2pt,
      align: right,
      text(size: 8pt, weight: "medium", style: "oblique", location),
      text(size: 8pt, weight: "medium", fill: rgb("#5B6572"), style: "oblique", date),
    ),
  )
  v(-3pt)
}

#cv-section("Education")

#education-entry(
  [Seneca Polytechnic],
  [Diploma, Computer Programming],
  [May. 2024 - Aug. 2025],
  [Toronto, Canada],
)

#education-entry(
  [Hwa Hsia University of Technology],
  [Bachelor's, Department of Information Management],
  [Jun. 2018 - Aug. 2020],
  [New Taipei City, Taiwan],
)

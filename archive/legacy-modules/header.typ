#import "@preview/fontawesome:0.6.0": *

#let contact-item(icon, value) = {
  box([#icon #h(4pt) #value])
}

#v(6pt)
#align(center)[
  #text(size: 32pt, weight: "bold", fill: rgb("#111111"))[Lou]
  #h(5pt)
  #text(size: 32pt, weight: "light", fill: rgb("#6B7280"))[Chang]
]
#v(-4pt)
#align(center)[
  #text(size: 10pt, weight: "semibold", fill: rgb("#2C3E50"))[
    Platform / DevOps Engineer | Terraform, CI/CD, Cloud Infrastructure, Production Reliability
  ]
]
#v(-6pt)
#align(center)[
  #text(size: 9.8pt, style: "italic", fill: rgb("#4B5563"))[
    Toronto, ON, Canada
  ]
]
#v(-6pt)
#set text(size: 8.9pt, fill: rgb("#2C3E50"))
#align(center)[
  #contact-item(
    fa-envelope(),
    link("mailto:louchang.dev@outlook.com")[#text("louchang.dev@outlook.com")],
  )
  #h(5pt) | #h(5pt)
  #contact-item(
    fa-pager(),
    link("https://loustack.dev")[loustack.dev],
  )
  #h(5pt) | #h(5pt)
  #contact-item(
    fa-square-github(),
    link("https://github.com/loustack17")[loustack17],
  )
  #h(5pt) | #h(5pt)
  #contact-item(
    fa-linkedin(),
    link("https://www.linkedin.com/in/lou-chang")[lou-chang],
  )
]
#v(0pt)

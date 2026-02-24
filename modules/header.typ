#import "@preview/fontawesome:0.6.0": *

#let contact-item(icon, value) = {
  box([#icon #h(4pt) #value])
}

#v(-34pt)
#align(center)[
  #text(size: 34pt, weight: "bold", fill: rgb("#111111"))[Lou]
  #h(5pt)
  #text(size: 34pt, weight: "light", fill: rgb("#6B7280"))[Chang]
]
#v(-2pt)
#align(center)[
  #text(size: 10pt, weight: "semibold", fill: rgb("#2C3E50"))[
    DevOps / Backend Engineer | CI/CD, Cloud, Linux
  ]
]
#v(-5pt)
#align(center)[
  #text(size: 9.8pt, style: "italic", fill: rgb("#4B5563"))[
    Toronto, ON, Canada
  ]
]
#v(-7pt)
#set text(size: 8.9pt, fill: rgb("#2C3E50"))
#align(center)[
  #contact-item(
    fa-mobile-screen-button(),
    link("tel:+16476867427")[+1-(647)-686-7427],
  )
  #h(5pt) | #h(5pt)
  #contact-item(
    fa-envelope(),
    link("mailto:louchang.tw@gmail.com")[#text("louchang.tw@gmail.com")],
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
#v(6pt)

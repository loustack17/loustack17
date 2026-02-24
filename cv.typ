// Imports
#import "@preview/brilliant-cv:3.1.2": cv
#let metadata = toml("./metadata.toml")
#let cv-language = sys.inputs.at("language", default: none)
#let metadata = if cv-language != none {
  metadata + (language: cv-language)
} else {
  metadata
}

#show table.where(row-gutter: 6mm): set table(row-gutter: 0mm)
#show text.where(size: 32pt, weight: "light"): set text(size: 0.1pt, fill: white)
#show text.where(size: 32pt, weight: "bold"): set text(size: 0.1pt, fill: white)
#show text.where(size: 10pt, weight: "medium", style: "italic"): set text(size: 0.1pt, fill: white)
#show text.where(size: 8pt, weight: "medium", fill: gray, style: "oblique"): set text(fill: rgb("#5B6572"))

#let import-modules(modules, lang: metadata.language) = {
  for module in modules {
    include {
      "modules_" + lang + "/" + module + ".typ"
    }
  }
}

#show: cv.with(metadata)

#import-modules((
  "highlights",
  "professional",
  "education",
  "skills",
))

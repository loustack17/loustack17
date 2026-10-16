// Imports
#let metadata = toml("./metadata.toml")
#let cv-target = sys.inputs.at("target", default: metadata.at("default_target"))
#let render = metadata.at("render")
// `--input font=...` only overrides the font for layout checks on machines without the real one.
#let cv-font = sys.inputs.at("font", default: render.at("font"))

#set page(paper: render.at("paper_size"), margin: (top: 30pt, bottom: 22pt, left: 31pt, right: 31pt))
#set text(font: cv-font, size: render.at("font_size") * 1pt, weight: "light", fill: rgb("#141b28"))
#set par(leading: 0.5em, spacing: 5pt)
#set list(marker: [•], indent: 8pt, body-indent: 6pt, spacing: 2.8pt)

#let shared = metadata.at("shared")
#let target = yaml(render.at("payload_directory") + "/" + cv-target + ".yaml")

#import "modules/resume.typ": render-resume
#render-resume(shared, target)

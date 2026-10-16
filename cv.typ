// Imports
#let metadata = toml("./metadata.toml")
#let cv-target = sys.inputs.at("target", default: metadata.at("default_target"))
#let render = metadata.at("render")
// Helvetica Neue only. Do not substitute another font.
#let cv-font = render.at("font")

#set page(paper: render.at("paper_size"), margin: (top: 28pt, bottom: 22pt, left: 31pt, right: 31pt))
// Full ascender/descender line boxes keep spacing predictable (no negative offsets needed).
#set text(font: cv-font, size: render.at("font_size") * 1pt, weight: "light", fill: rgb("#141b28"), top-edge: "ascender", bottom-edge: "descender")
#set par(leading: 1.3pt, spacing: 0pt)
#set list(marker: [•], indent: 8pt, body-indent: 6pt, spacing: 2.5pt)

#let shared = metadata.at("shared")
#let target = yaml(render.at("payload_directory") + "/" + cv-target + ".yaml")

#import "modules/resume.typ": render-resume
#render-resume(shared, target)

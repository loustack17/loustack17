// Cover letter in the same visual system as the resume (Helvetica Neue only).
// Build: typst compile letter.typ letter.pdf --input company="Acme" --input role="Backend Engineer"
#import "modules/resume.typ": render-header
#import "modules/styles.typ": muted

#let metadata = toml("./metadata.toml")
#let render = metadata.at("render")
#let shared = metadata.at("shared")
#let letter = yaml(render.at("payload_directory") + "/letter.yaml")

#let company = sys.inputs.at("company", default: "[Company]")
#let role = sys.inputs.at("role", default: "[Role]")
#let fill-in(s) = s.replace("{company}", company).replace("{role}", role)

#set page(paper: render.at("paper_size"), margin: (top: 28pt, bottom: 40pt, left: 56pt, right: 56pt))
#set text(font: render.at("font"), size: 10.5pt, weight: "light", fill: rgb("#141b28"), top-edge: "ascender", bottom-edge: "descender")
#set par(leading: 3.5pt, spacing: 10pt)

#render-header(shared, (headline: letter.at("headline")))
#v(22pt)
#text(fill: muted)[#datetime.today().display("[month repr:long] [day], [year]")]
#v(10pt)
#letter.at("recipient")
#v(4pt)
#text(weight: "bold")[#fill-in(letter.at("subject"))]
#v(12pt)
Dear #letter.at("recipient"),
#for p in letter.at("paragraphs") { par(fill-in(p)) }
#v(4pt)
#letter.at("closing") \
Lou Chang

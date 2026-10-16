#import "styles.typ": entry-header, ink, labeled-bullet, muted, navy, section-title, tech-row

#let render-header(shared, target) = {
  let contact = shared.at("contact")
  align(center)[
    #text(size: 32pt, weight: "bold", fill: rgb("#111111"))[#shared.at("name").at("first")]
    #h(5pt)
    #text(size: 32pt, weight: "light", fill: muted)[#shared.at("name").at("last")]
  ]
  v(0pt)
  align(center, text(size: 10.6pt, weight: "medium", fill: navy, target.at("headline")))
  v(2pt)
  align(center, text(size: 9.6pt, weight: "light", fill: muted, shared.at("location")))
  v(2pt)

  // Phone is optional: set `phone` under [shared.contact] in metadata.toml to show it.
  let items = (("Email", link("mailto:" + contact.at("email"), contact.at("email"))),)
  if "phone" in contact { items.push(("Phone", contact.at("phone"))) }
  items.push(("Website", link(contact.at("website"), contact.at("website-label"))))
  items.push(("GitHub", link(contact.at("github"), contact.at("github-label"))))
  items.push(("LinkedIn", link(contact.at("linkedin"), contact.at("linkedin-label"))))
  align(center, text(size: 9.8pt, weight: "light", fill: muted, items
    .map(it => [#text(weight: "medium")[#it.at(0):] #it.at(1)])
    .join([ #h(3pt)|#h(3pt) ])))
}

#let render-summary(target) = {
  section-title("Summary")
  target.at("summary")
}

#let render-experience(target) = {
  section-title("Experience")
  for item in target.at("experience") {
    v(3pt)
    entry-header(item.at("title"), item.at("company"), item.at("date"), item.at("location"))
    // One line of scope for roles that cover many unrelated client systems.
    if "intro" in item { par(item.at("intro")) }
    list(..item.at("bullets").map(b => labeled-bullet(b.at("label"), b.at("text"))))
  }
}

#let render-projects(target) = {
  if target.at("projects").len() > 0 {
    section-title("Selected Project")
    for p in target.at("projects") {
      text(size: 10.7pt, weight: "bold")[#p.at("title") | #p.at("subtitle")]
      par(p.at("text"))
    }
  }
}

#let render-education(shared) = {
  section-title("Education & Certification")
  for item in shared.at("education") {
    v(1pt)
    entry-header(item.at("school"), item.at("credential"), item.at("date"), item.at("location"))
  }
}

#let render-skills(target) = {
  section-title("Technologies")
  for item in target.at("skills") {
    tech-row(item.at("category"), item.at("items"))
  }
}

#let render-resume(shared, target) = {
  render-header(shared, target)
  render-summary(target)
  render-experience(target)
  render-projects(target)
  render-education(shared)
  render-skills(target)
}

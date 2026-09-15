// CV — rebuild of reference/original.pdf in Typst.
// Page composition only; section content lives in skills.typ, contact.typ,
// profile.typ, experience.typ, education.typ, certifications.typ, and shared
// theme/components live in style.typ.

#import "style.typ": *
#import "skills.typ" as skills
#import "contact.typ" as contact
#import "profile.typ" as profile
#import "experience.typ" as experience
#import "education.typ" as education
#import "certifications.typ" as certifications

#show: cv-style

// ---- page 1 -----------------------------------------------------------

#grid(
  columns: (32%, 1fr),
  column-gutter: 20pt,
  [
    #image("assets/photo.jpg", width: 100%)
    #v(14pt)

    #skills.heading
    #skills.content

    #contact.heading
    #contact.content

    #v(16pt)
    #align(center)[#image("assets/qr.png", width: 62%)]
  ],
  [
    #block(fill: dark, width: 100%, inset: (x: 16pt, y: 14pt), radius: 2pt)[
      #text(fill: white, weight: "bold", size: 21pt)[CHRISTOPH LINSE]
      #v(4pt)
      #box(width: 34pt, height: 2pt, fill: accent)
      #v(6pt)
      #text(fill: rgb("#d8d8d8"), size: 11pt)[Cloud and Software Engineer]
    ]

    #profile.heading
    #profile.content

    #experience.heading
    #experience.avaloq-current
  ],
)

// ---- pages 2+: two-column continuation --------------------------------

#pagebreak()
#set page(background: divider-background)

#two-col(
  [
    #education.heading
    #education.udemy
    #education.bsc
    #education.technician
  ],
  [
    #experience.avaloq-esb
    #experience.swiss-governance
  ],
)

#pagebreak()

#two-col(
  [
    #education.it-specialist
    #certifications.heading
    #certifications.cks
    #certifications.cka
  ],
  [
    #experience.automobile
    #experience.systems-engineer
  ],
)

#pagebreak()

#two-col(
  [
    #certifications.ckad
    #certifications.kcna
    #certifications.kcsa
  ],
  [
    #experience.systems-engineer-continued
  ],
)

#pagebreak()

#two-col(
  [
    #certifications.pca
    #certifications.ica
    #certifications.capa
    #certifications.cgoa
  ],
  [],
)

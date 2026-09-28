// CERTIFICATIONS section — Golden Kubestronaut highlight followed by a compact
// list of every certification, grouped by the title it counts towards.

#import "style.typ": heading2, accent

#let heading = heading2[CERTIFICATIONS]

#let cert-group(title, ..items) = block(above: 10pt, below: 0pt)[
  #text(fill: accent, weight: "bold", size: 9pt)[#title]
  #v(3pt)
  #list(..items.pos().map(i => [*#i.at(0)* #h(2pt) #i.at(1)]))
]

#let golden-kubestronaut = block(
  width: 100%,
  inset: (x: 9pt, y: 8pt),
  radius: 2pt,
  stroke: (left: 2.4pt + accent),
  fill: rgb("#eef3fa"),
)[
  #text(weight: "bold", size: 10.5pt)[Golden Kubestronaut]
  #v(3pt)
  #text(size: 8.6pt)[
    The CNCF's highest certification title, awarded for passing every
    CNCF certification plus the LFCS. Includes the Kubestronaut
    title for all five Kubernetes certifications.
  ]
]

#let kubestronaut = cert-group(
  "Kubestronaut",
  ("CKA", "Certified Kubernetes Administrator"),
  ("CKAD", "Certified Kubernetes Application Developer"),
  ("CKS", "Certified Kubernetes Security Specialist"),
  ("KCNA", "Kubernetes and Cloud Native Associate"),
  ("KCSA", "Kubernetes and Cloud Native Security Associate"),
)

#let golden = cert-group(
  "Cloud Native & Linux",
  ("PCA", "Prometheus Certified Associate"),
  ("ICA", "Istio Certified Associate"),
  ("CCA", "Cilium Certified Associate"),
  ("CAPA", "Certified Argo Project Associate"),
  ("CGOA", "Certified GitOps Associate"),
  ("KCA", "Kyverno Certified Associate"),
  ("CBA", "Certified Backstage Associate"),
  ("CNPA", "Cloud Native Platform Engineering Associate"),
  ("OTCA", "OpenTelemetry Certified Associate"),
  ("CNPE", "Certified Cloud Native Platform Engineer"),
  ("LFCS", "Linux Foundation Certified System Administrator"),
)

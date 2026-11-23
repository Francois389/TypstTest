#set document(title: [A FLuid Dynamic Model for Glacier Flow])


#set page(
  paper: "us-letter",
  header: align(right + horizon, context document.title),
  numbering: "1",
)

#set text(
  font: "Libertinus Serif",
  size: 11pt
)

#set par(
  justify: true,
)

#set heading(numbering: "1.A.1")

#show title: set text(size: 17pt)
#show title: set align(center)
#show title: set block(below: 1.2em)

#title(context document.title)

#grid(
  columns: (1fr, 1fr),
  align(center)[
    Therese Tungsten \
    Artos Institute \
    #link("mailto:tung@artos.edu")
  ],
  align(center)[
    Dr. John Doe \
    Artos Institute \
    #link("mailto:doe@artos.edu")
  ]
)

#align(center)[
  #set par(justify: false)
  *Abstract*\
  #lorem(80)
]

#lorem(600)

= Introduction

In this report, we will explore the
various factors that influence _fluid
dynamics_ in glaciers and how they
contribute to the formation and
behaviour of these natural structures.

Glaciers as the one shown in @glaciers will cease to exist if we don't take action soon!

+ The climate
  - Temperature
  - Precipitation
+ The topography
+ The geology

#align(center + bottom)[
#figure(
  image("glacier.png", width: 70%),
  caption : [
    _Glaciers_ form an important part
    of the earth's climate system.
  ]
) <glaciers>
]

== Test

#lorem(12)

== Autre

#lorem(5)

=== Oui

#lorem(12)

= Methods

We follow the glacier melting models established in @ctan.
_(Je n'avais pas le même fichier que le tuto donc, j'en ais pris un trouvé en ligne)_

The equation $ Q = rho A v + "time offset" $
defines the glacial flow rate.

Total displaced soil by glacial flow :

$ 7.32 beta + 
sum_(i=0)^nabla (Q_i (a_i - epsilon)) / 2 $

$ v := vec(x_1, x_2, x_3) $

$ a arrow.squiggly b $

= Background

In case of glaciers, fluid dynamics principles can be used to understand how the movement and behaviour of the ice is influenced by factors sych as temperature, pressure, and the presence of other fluids (such as water).

#bibliography("biblatex-examples.bib")

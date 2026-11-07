#import "@preview/showybox:2.0.4": showybox

#let usecase(title: "", body: "", narrative: none, supplement: "Use Case:", ..args) = {
  let footer = if narrative == none or narrative == "" {
    ""
  } else [
    *Narrative:* _ #narrative _
  ]

  set list(marker: [], body-indent: 1em)
  return figure(
    kind: "usecase", 
    supplement: "Use Case:",
    numbering: itr => [#title],
  )[
    #showybox(
      footer-style: (
        sep-thickness: 1pt,
        align: left,
        color: black,
      ),
      title: heading()[Use Case: #title],
      footer: footer,
      ..args
    )[#body]
  ]
}
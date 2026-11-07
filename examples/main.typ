// typst compile --input isolated=true main.typ main{n}.svg
// or
// typst compile --input isolated=true main.typ main.pdf
// vs this for a normal letter sized pdf
// typst compile main.typ main.pdf

#import "../lib.typ": *
#import "mycases.typ"

// Only show use cases boxes and store on individual pages autosized to content
#let isolated = if sys.inputs.keys().contains("isolated") {
  lower(sys.inputs.at("isolated")) in ("1", "true")
} else {
   false
}

#set page(width: 6in, height: auto, margin: 3pt) if isolated

= Usage

Using `use-cases` is simple. Just set a title, body, and narrative (optional). Format the body however you desire. Optional `args` are passed to the `showybox` package.

```typst
#usecase(
  body: [
  *Primary Actor:* ABC\
  *Scope:* XYZ
  ],
  narrative: lorem(100),
  title: "Demo",
  shadow: (
    offset: 3pt,
    color: blue
  ),
)
```

#usecase(
  body: [
  *Primary Actor:* ABC\
  *Scope:* XYZ
  ],
  narrative: lorem(100),
  title: "Demo",
  shadow: (
    offset: 3pt,
    color: blue
  ),
) <uc-demo>

You can reference uses cases, i.e. here will reference to @uc-demo.

If you have multiple use cases it may be easier to define a dictionary, iterate and spat the dictionary into `#usecase()`

#raw(read("mycases.typ"), lang: "typst")

#for (key, case) in mycases.cases [
  #if isolated {pagebreak()}
  #usecase(..case) #label("uc-" + key)
]

It is clear that @uc-batman is a better option than @uc-wayne.

= Use Case Cards

Doing something like the following

#raw(read("main_cards.typ"), lang: "typst")

coupled with this compile command will generate individual svg files for each use case (i.e., page).

```bash
typst compile main.typ UseCases{n}.svg
```
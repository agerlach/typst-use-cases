#import "../lib.typ": *
#import "mycases.typ"
#set page(width: 6in, height: auto, margin: 3pt) 

#for (key, case) in mycases.cases [
  #usecase(..case) #label("uc-" + key)
  #pagebreak()
]
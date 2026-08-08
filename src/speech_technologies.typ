#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontpage(
  title: "Speech Technologies",
  professors: "Prof. Brutti Alessio",
  year: "2026/2027",
  background1: rgb(174, 198, 207),
  background2: rgb(152, 251, 203)
)

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)
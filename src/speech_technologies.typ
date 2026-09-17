#import "../templates/frontpage.typ": frontpage
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#set text(font: "Google Sans", size: 12pt)

#set page(margin: 0cm)

#frontpage(
  title: "Speech Technologies",
  professors: "Prof. Brutti Alessio",
  year: "2026/2027",
  background1: rgb(174, 198, 207),
  background2: rgb(152, 251, 203)
)

#show: style

#pagebreak()

#index()

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Digital Speech Processing
#pagebreak()

= Automatic Speech Recognition
#pagebreak()

= Speaker Diarization
#pagebreak()

= Multimodality and LLMs
#pagebreak()

= Training a Large-scale Model
#pagebreak()

= Low Resourced Languages and Domains
#pagebreak()

= Distant ASR
#pagebreak()
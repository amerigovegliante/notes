#import "../templates/frontpage.typ": frontespizio
#import "../templates/style.typ": style
#import "../templates/index.typ": index

#show: style

#frontespizio(
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

= Digital Speech Processing
= Automatic Speech Recognition
= Speaker Diarization
= Multimodality & LLMs
= Training a Large Speech Model
= Low Resourced Languages & Domains
= Distant ASR
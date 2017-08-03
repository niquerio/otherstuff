\version "2.18.2"

\header {
  title = "St. Barbara's"
}
\include "english.ly"
global = {
  \time 4/4
  \key f \major
 
}

chordNames = \chordmode {
  \global
  
  
}

melody = \relative c' {
  \global
 \partial 2  f4 a | bf2  bf4 c8 bf a4 g f2 ^"*" 
  g4 a bf g | f2 f4^"*" f | e2 e4 f8 e | f4 e d2^"*" | c2 c4 e4 | f2 f4^"*" a | 
  c4 c c2 |  a4 g8 a f2 | c4 d e c | f2 a8 g f4 | g4 f e g | a2 c4 a | g4 f e2 |
  f2 \bar "|."
  
}


\score {
  <<
    \new ChordNames \chordNames
    \new Staff { \melody }
   
  >>
  \layout { }
  \midi { }
}

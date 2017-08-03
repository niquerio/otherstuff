
% Lily was here -- automatically converted by /usr/bin/midi2ly from pennsic_dance.mid
\version "2.12.0"

\header {
	title = "St. Paul's Cathedral"
	composer = "Margaret of Raynsford and Jadwiga Krzyzanowska"
	tagline = "Free for non-commercial use within the SCA"
}
\include "english.ly"


melody = \transpose g d { \relative c'' {

  
  \clef G
  
  \time 3/4
  

  \key g \minor
  
\repeat volta 2{ 
   g8. a16 bf8 bf a g | fs8 g a a fs d | g8. a16 bf8 bf a g | a4. bf8 c4 |
   bf8. c16 d8 d c bf | a8. bf16 c8 c bf a | g2 f4 g2. 
 } \break
\repeat volta 2 {
   c8. d16 ef8 ef d c | g' f ef d ef f | d4. c8 d4 |
   bf8. c16 d8 d c bf | ef d c bf c d | c4. bf8 c8 d|
   ef d c bf a4 | d8 c bf a fs4 | 
   d'8. c16 bf8 d c bf | c8. bf16 a8 c bf a | g2 f4 | g2.

 } \break
\repeat volta 2 {
   bf8. c16 d8 bf8 d ef | f g f ef d f | ef d c bf a4 |
   g8. a16 bf8 g bf8 c | d ef d c bf d | c bf a g f4
   ef8 f g a bf4 | f8 g a bf c4 |
   d8. c16 bf8 d c bf | c8. bf16 a8 c bf a | g2 f4 | g2.
 } \break
   g8. a16 bf8 g a bf8 | a8 g fs g a fs | g4. a8 bf4 |
   a8. bf16 c8 a bf c | ef,8 f g a bf c | a4. bf8 c4 |
   d8. c16 bf8 d c bf | g2 f4 | g2.
  \bar "|."
}
}

chordLine = \transpose g d{ \chordmode {
\repeat volta 2 {g2.:m | d | g:m | f |
bf | f | g2:m f4 | g2.:m | }
\repeat volta 2 { c2.:m | g:m | d:m | 
g:m | ef | f |
c2:m f4 | g2:m d4 |
g2.:m | f2. | g2:m f4 | g2.:m }

\repeat volta 2 { bf2. | f | ef2 f4 |
g2.:m | bf | f2 d4:m | 
c2:m g4:m | d2:m f4 |
g2.:m | f2. | g2:m f4 | g2.:m }


g2.:m | d | g:m |
f | ef | f |
g2.:m | g2:m f4 | g2.:m
}
}

\score {
  \unfoldRepeats
  \context ChoirStaff <<
    \context ChordNames = chordcontext << \chordLine >>

    \context Staff = cantusStaff <<
      \context Voice = cantus {
	\melody
      }
    >>


  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 95 4)
    }
  }


  \layout { 
    indent = 0\mm
  }
}

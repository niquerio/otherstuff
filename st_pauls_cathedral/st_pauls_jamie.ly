\version "2.12.0"

\header {
	title = "St. Paul's Cathedral"
	composer = "Jame of the BlackCloak"
	tagline = "Free for non-commercial use within the SCA"
}
\include "english.ly"


melody = \relative c'' {
  \set Staff.midiInstrument = #"oboe"
  
  \clef G
  
  \time 3/4
  

  \key d \minor
\repeat volta 1{  
\repeat volta 2{ 
g4. f8 e4 | d2 e4 | f4 c' bf | a2. | d4. c8 g4 | a4 bf f |
 } 
\alternative {
   {g4 f e | d2 e8 f } {g2 f4 | g4 a d, }
}

\repeat volta 2 {
   c'2. | a2. | g4 a d | c2. | a2. g4 a d | e2. | f2. | e4. d8 c4 | d4 c a
 }
\alternative {
   {g2 f4 | g4 a d,}{ g4 a c,4 | d2 e4}
} 
\repeat volta 2 {
   f8 g a4 f | bf4. a8 g8 f | g2 f8 g | a bf c4 a | d4. e8 f4 | g2. |
   a8 g f g f e | f2 e4 | d4. c8 a4 |
 } 
\alternative  {
{ bf4 a f | e8 f g f e c | d2 e4}{ bf'4 c d | e8 f g f e c | d2 e4}
}
f4 g a | g4. f8 e d | cs4 d e d e f | e4. d8 cs4 | d8 a d4 c | bf4 a g |
f8 e f g e4 | 
}
\alternative { {d2 e8 f8 d2.} { d2.} } \bar "|."
  
}


countermelody = \relative c' {
 #(set-accidental-style 'modern-cautionary)

  \set Staff.midiInstrument = #"recorder"


 \clef treble



 \key d\minor
 \time 3/4
\repeat volta 5{ 
    \repeat volta 2{
 e4. f8 g4 |  % 1
 a4. c8 a8 c8 |  % 2
 d4 a4 g4 |  % 3
 a8 c8 r4  c4 |  % 4
 d4 e4 d4 |  % 5
 a8 c8 r4  c4 |  % 6
% d''8 c''8 a'8 g'4 a'8 |  % 7
}
\alternative{ {
% *** |Ending|Endings:1 ***

d8 c8 a8 g4 a8 | a4. a8 g8 f8   % 8
}

% *** |Ending|Endings:2 ***

{ d'8 c8 a8 g4 a8 | bf2.  }}

\repeat volta 2 {
 a8 c8 a4 c4 |  % 10
 e2. |  % 11
 d2. |  % 12
 a8 c8 a4 c4 |  % 13
 e2. |  % 14
 g2. |  % 15
 c,4 d4 e4 |  % 16
 f8 e8 d4 c4 |  % 17
 c4 d4 e4 |  % 18
 a,2. |  % 19
 }
\alternative { {
% *** |Ending|Endings:1 ***

 c8 a8 g4 a4 |  % 20
 bf2.   % 21
} 

% *** |Ending|Endings:2 ***
{
 g8 a8 g4 c4 |  % 22
 a2.  % 23
}}

\repeat volta 2 {
 c8 bf8 a8 f8 a4 |  % 24
 bf8. d8. d8 bf4 |  % 25
 g2. |  % 26
 c8 bf8 a8 f8 c'4 |  % 27
 a8. a8. g8 a4 |  % 28
 bf2. |  % 29
 a4 c4 d8 c8 |  % 30
 f,4 a4 c8 a8 |  % 31
 d,4 c'4 d4 |  % 32
}

\alternative { {
% *** |Ending|Endings:1 ***

 bf2. |  % 33
 c4 e4 c4 |  % 34
 d2.   % 35

}{
% *** |Ending|Endings:2 ***

 bf2. |  % 36
 c4 a4 c,4 |  % 37
 d2. |  % 38
}}
 a'4 g4 f4 |  % 39
 g8 a8 g4 c4 |  % 40
 a2. |  % 41
 f4 e4 d4 |  % 42
 e8 f8 e4 g4 |  % 43
 a2. |  % 44
 g8 a8 a8 c8 c8 d8 |  % 45
 a8 g8 f8 e8 c4 |  % 46
}
\alternative { { d2. }{ d2.  } }
}



chordLine = \chordmode { 
\set ChordNames.midiInstrument = #"orchestral harp"
\repeat volta 5 {
\repeat volta 2 {c2. | d2.:m | f2. | d2.:m | g2.:m | f | }
\alternative { {c2. | d2.:m} {c2. | g,2.:m} }

\repeat volta 2 {f,2. | a,:m | g,:m | f, | a,:m | g,:m | c | f | c | d:m}
\alternative { {c2. | g,:m } {g,2:m c,4 | d2.:m} }

\repeat volta 2 {f2. | bf,2. | g,:m | a,:m | d:m | g,:m | a,:m | f2 c4 | d2:m a,4:m}
\alternative { {bf,2. | c2. | d2.:m} {bf,2. | c2. | d,2.:m} }

f,2. | g,:m | a, | d:m | a, | d:m | g:m | f2 c4 | 
}
\alternative { {d2.:m }{d2.:m }}
}

\score {
  
  \context ChoirStaff <<
    \context ChordNames = chordcontext << \chordLine >>

    \context Staff = cantusStaff << 
      \context Voice = cantus {
	\melody
      }
    >>

    \context Staff = altusStaff << 
      \context Voice = altus {
	\countermelody
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

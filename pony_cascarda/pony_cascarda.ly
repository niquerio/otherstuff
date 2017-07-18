\version "2.12.0"
\include "./pp_functions.ly"
ppTempo = #(ly:make-moment 180 4)
%#(set-global-staff-size 25)
#(set-default-paper-size "letter")

\header {
	title = "Mi Amore Cadenza"
    subtitle = \markup \italic "Cascarda for three couples"
    meter = "AABBCC x 3 or AABBCC x 4"
	composer = "Monique Rio"
    poet = "Gwommy Anpurpaidh & Felice Debbage, A.S. 48"
	tagline = \jadwigaTagline 
	copyright = \jadwigaCopyright
}
\paper{
  system-system-spacing.minimum-distance = #17
}
\include "english.ly"
global= {
  \time 3/4
  \key c \major
}

ppMusicOne = \relative c' {
  \set Staff.midiInstrument = #"oboe"
  
  \clef "G_8"
  
\ppMark
\repeat volta 2{
e4. e8 e4  % 1
 e4 f4 g4   % 2
 af4. af8 af4   % 3
 af4 bf4 af4   % 4
 g4. e8 e4   % 5
 e4 f4 e4  % 6
d2. 
}

\alternative { {  d4 g f } { d2 c4} }
\ppMark
\repeat volta 2{
 b4. b8 b4   % 9
 b4 a4 b4  % 10
 c4. c8 d4   % 11
 ef4 d4 c4   % 12
 b4. b8 b4  % 13
 b4 a4 b4   % 14
c2.
}
\alternative { { c4 b a } { c2 d4} }
\ppMark
\repeat volta 2{
 e2 e4   % 17
 f2 f4 % 18
 e4. f8 e4   % 19
 d2 c4   % 20
 e4. c8 d4   % 21
 ef4. d8 c4   % 22
 b4. a8 b4   % 23
 c2.
}

}

ppMusicTwo = \relative c' {
  \set Staff.midiInstrument = #"cello"
\clef bass
\repeat volta 2{
c2.   % 1
 c2 g4   % 2
 f2.   % 3
 f2 af4   % 4
 c2.   % 5
 c2 c4   % 6
g2.
}
\alternative { { g2.} {g2.} }
\repeat volta 2{
 g2.   % 9
 g2.   % 10
 g4 af4 bf4   % 11
 c4 f,4 af4   % 12
 g2.   % 13
 g8 f4 d8 b4   % 14
c2.
}
\alternative { {c2.} {c2.} }
\repeat volta 2{
c4. c8 g'4   % 17
 f2 f4   % 18
 c4. c8 a4   % 19
 g2 g4   % 20
 c2 c4   % 21
 c8 bf8 f8 g8 af4   % 22
 g4. g8 ef'8 d8   % 23
 c2.
}
}


ppChordLine = \chordmode { 
  \set ChordNames.midiInstrument = #"orchestral harp"
\repeat volta 2{
c2.  c  f:m  f:m  c  c g
}
\alternative { {g} {g} }
\repeat volta 2{
g g c:m c:m g g c
}
\alternative { {c } {c} }
\repeat volta 2{
c f c g c c:m g c
}

}

\score {
\unfoldRepeats
  \context ChoirStaff <<
    \context ChordNames = chordcontext << \ppChordLine >>

    \context Staff = cantusStaff << 
      \context Voice = cantus {
	\ppMusicOne
      }
    >>

    \context Staff = bassStaff << 
      \context Voice = bass {
	\ppMusicTwo
      }
    >>

  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 180 4)
    }
  }

}
\include "./ppile_a2.ly"

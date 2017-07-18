\include "./pp_functions.ly"
\header{
  title = "Comitato d'amore"
  subtitle = "Casscarda for couples"
  poet = "The Committe of Love headed by James Blackcloak"
  tagline = \jadwigaTagline
  copyright = \jadwigaCopyright
  meter = "AABB x ?"
}

#(set-default-paper-size "letter")
\include "english.ly"

global = {
  \key g \dorian
  \time 3/4
  \clef "treble"
}

ppChordLine = {
   \chordmode{
       \repeat volta 2 {
         g2.:m f bf bf f f bf bf
          g:m f bf bf f d g:m g:m
       }
       \repeat volta 2 {
        c d g:m g:m c d g:m g:m
       }
       
   }
}
ppMusicOne = \relative c'' {
  \ppMark
  \repeat volta 2 {
    g2 g4 a4. g8 a4 bf2. bf2 d4 c2 bf4 a4. g8 a4 bf2. bf2.
    g2 g4 a4. g8 a4 bf2. bf2 d4 c2 bf4 a4. g8 fs4 g2. g2 d4
   
  }
  \ppMark
  \repeat volta 2 {
    e4. fs8 g4 fs4. e8 fs4 g4. a8 bf4 bf4 a g e4. fs8 g4 fs4. d8 fs4 g2. g2.
    }
  
  

}

\score {
  \unfoldRepeats
  <<
    \context ChoirStaff 
    <<

      \context ChordNames = chordcontext { 
        \set chordNameExceptions = #chExceptions
        \set ChordNames.midiInstrument = #"orchestral harp"
        << 
          \global \transpose c' c \ppChordLine 
        >>
      }

      \new Staff \with { \consists "Volta_engraver" }
      \context Voice = ppvOne {
        \set Score.markFormatter = #format-mark-box-letters
        << \set Staff.midiInstrument = #"oboe"
        \global \ppMusicOne 	 >> 
      }
    >>

  >>
  \midi {
  \context {
    \Score
    
    tempoWholesPerMinute = #(ly:make-moment 140 2)
  }
  }
}

\include "./ppile_a1.ly"

\version "2.10.10"  % necessary for upgrading to future LilyPond versions.


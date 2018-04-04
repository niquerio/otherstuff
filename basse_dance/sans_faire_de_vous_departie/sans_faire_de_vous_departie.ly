\include "./pp_functions.ly"
\header{
  title = "Sans faire de vous departie"
  subtitle = \markup { \italic "Basse Danse" }
  
  tagline = \jadwigaTagline
  copyright = \jadwigaCopyright
  meter = ""
}

#(set-default-paper-size "letter")
\include "english.ly"

global = {
  \key d \dorian
  \time 6/4
  \clef "G_8"
}

ppChordLine = {
   \chordmode{

       
   }
}
ppMusicOne = \relative c {
 % f1. a bf g a g f~ f c' a c1. ~ c1. f, g f1. ~ f1. c'1. d e f e d c ~ c1.
  %s1. f1. c d a c1. bf1. a ~ a d e f g a g f ~ f c ef d c bf a g1. ~ g c c f, e f1 a g f1. f1.
    c1. e f d e d c~ c g' e g1. ~ g1. c, d c1. ~ c1. g'1. a b c b a g ~ g1.
  s1. c1. g a e g1. f1. e ~ e a b c d e d c ~ c g bf a g f e d1. ~ d g g c, b c1 e d c1. c1.  
}
ppMusicTwo = \relative c{
 c1. e f d e d c c g' e g f e d c c g' a b c b a g g g 
 c g a e s1. f e e e a b c d e d c g g a g f e d d g e c f e d c c
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

\include "./ppile_a2.ly"

\version "2.10.10"  % necessary for upgrading to future LilyPond versions.


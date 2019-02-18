
\version "2.18.2"
\include "english.ly"

\paper {
  print-page-number = ##f
  print-first-page-number = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##t
  system-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 12)
       (padding . 1)
       (stretchability . 16))
}

chExceptionMusic = {
  <c g>1-\markup { \super "5" }
}


% Convert music to list and prepend to existing exceptions.
chExceptions = #( append
( sequential-music-to-chord-exceptions chExceptionMusic #t)
ignatzekExceptions)

ppMark = { \once \override Score.RehearsalMark #'self-alignment-X = #LEFT \mark \default }
ppMarkA = \markup{ \bold \override #'(box-padding . 0.5) \box \large "A" }
ppMarkB = \markup{ \bold \override #'(box-padding . 0.5) \box \large "B" }
ppMarkC = \markup{ \bold \override #'(box-padding . 0.5) \box \large "C" }
ppMarkD = \markup{ \bold \override #'(box-padding . 0.5) \box \large "D" }
ppMarkE = \markup{ \bold \override #'(box-padding . 0.5) \box \large "E" }
ppMarkF = \markup{ \bold \override #'(box-padding . 0.5) \box \large "F" }
ppMarkG = \markup{ \bold \override #'(box-padding . 0.5) \box \large "G" }
ppMarkH = \markup{ \bold \override #'(box-padding . 0.5) \box \large "H" }
ppMarkI = \markup{ \bold \override #'(box-padding . 0.5) \box \large "I" }
ppMarkJ = \markup{ \bold \override #'(box-padding . 0.5) \box \large "J" }
ppMarkK = \markup{ \bold \override #'(box-padding . 0.5) \box \large "K" }

ficta = { \once \set suggestAccidentals = ##t }

arbeauSource = \markup { Thoinot Arbeau, \italic {Orchésographie,} 1589 }
playfordSource = \markup { John Playford, \italic {The English Dancing Master,} 1651 }
negriSource = \markup { Cesare Negri, \italic {Le Grazie d'Amore,} 1602 }
carosoSourceBalarino = \markup { Fabritio Caroso, \italic {Il Ballarino,} 1581 }
carosoSourceNobilta = \markup { Fabritio Caroso, \italic {Nobiltà di Dame,} 1600 }
pnaSource = \markup { Guglielmo Ebreo da Pesaro, c. 1475 (PnA) }
pndSource = \markup { Domenico da Piacenza, c. 1425-1450 (PnD) }
pngSource = \markup { Guglielmo Ebreo da Pesaro, 1463 (PnG) }
brusselsSource = \markup { Brussels MS 9085, 15th C. }
praetoriusSource = \markup { Michael Praetorius, \italic Terpsichore, 1612 }
ravenscroftSource = \markup { Thomas Ravenscroft, \italic Deuteromelia, 1609 }
susatoSource = \markup { Tylman Susato, \italic Danserye, 1551 }
gresleySource = \markup { Gresley Manuscript, c. 1500 }
byrdSource = \markup { William Byrd (c. 1540 - 1623) }

#(set-default-paper-size "letter")
#(set-global-staff-size 22)
ppTempo = #(ly:make-moment 70 2)

\header{
  title = "Alba Novella"
  subtitle = \markup \italic "Balletto"
  meter = ""
  poet = \carosoSourceBalarino
  composer = ""
  tagline = ""
  copyright = "" 
}

\header {
   
    }

\layout {
    \context { \Score
        autoBeaming = ##f
        }
    }
global = { \key g \dorian 
}
ppChordLine = \chordmode {



}
    
ppMusicOne =  \relative c'' {
  \repeat volta 2{
g2 g2 g4 bf a g fs2. fs4 fs2 a4 bf c bf a g g2 fs g1 g1
  }
    }

ppMusicTwo =  \relative a' {

    }

ppMusicThree =  \relative d { \clef "bass"
 
    }


\score {
  <<
    \context ChoirStaff 
    <<

      \context ChordNames = chordcontext { 
        \set chordNameExceptions = #chExceptions
        \set ChordNames.midiInstrument = #"harpsichord"
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
      \context Voice = ppvTwo { 
        << \set Staff.midiInstrument = #"oboe"
        \global \ppMusicTwo >> 
      }

      \context Voice = ppvThree { 
        << \set Staff.midiInstrument = #"oboe"
        \global \ppMusicThree >> 
      }

    >>

  >>

  \layout {
  between-system-space = 5\mm
  indent = 0\mm
  \context {
    \Staff
    \consists "Ambitus_engraver"
  }
  \context {
    \Score
    \remove "Volta_engraver"
  }
  \context { \ChordNames 
     \override ChordName #'font-size = #-1 
     \override ChordName #'font-series = #'bold 
  } 
  ragged-bottom=##t
  ragged-last-bottom=##t
}

\midi {
  \context {
    \Score
    tempoWholesPerMinute = \ppTempo
  }
}
}
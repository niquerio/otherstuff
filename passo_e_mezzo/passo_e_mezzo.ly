%score_options {"parts": 3, "verses": 0, "transposed": false}

\include "./sc_functions.ly"
\include "./sc_layout_instrumental.ly"

scStaffSize = 19
#(ly:set-option 'midi-extension "mid")

\include "english.ly"

scTempo = #(ly:make-moment 65 2)
scTitle = "Passo e Mezzo"
scSubtitle = "Shawm Edition"
scComposer = "Anonymous"
scArranger = "Arr: Al Cofrin"
scMeter = ""
scPoet = ""
scCopyright = ""
scTagline = ""



scGlobal= {
  \key g \major
  \time 2/2
 % \autoBeamOff
}



scMinimumSystemSpacing = #22


scMusicOneName = "cantus"
scMusicOneClef = \clef "G_8"

scMusicOne =   \relative c' {  
  e4 e4 e8 d c b c8 g'8 fs e d c b a b4 b b8 a b c d e d c b g a b 
  c4 e e8 d c b c e8 d c b a b a b4 b4 b e8 fs gs8 
  a b a gs fs e d e4 c8 d e fs g8 fs e8 d c b a 
  c8 b a b4 b b8 a b c d4 c4 b8 g a b
  c8 e d c b a b a b4 a b4 b a4 a a b4 a1 \bar "|." 
}

scMusicTwoName = "tenor"
scMusicTwoClef = \clef "G_8"

scMusicTwo =   \relative c {  
 c4 c c e e2 d4 e8 d d4 d d2 d4. e8 d d4 d8 e4 a2 a4 a a e8 fs gs a
 b4 gs8 e gs4 a4 b2 b4 b g2 g8 fs e fs g2 fs4 e d4 d d2 d4 e d2
 e1 e4 a a gs e4 f e gs4 a2 e2
}

scMusicThreeName = "bass"
scMusicThreeClef = \clef "bass"

scMusicThree =   \relative c {  
  a2 a a8 e' d c b a g fs g2 g4 g4 ~ g8 c b a g g fs g8 a4. g8 a2 a b
  e2 e e e c c4 c 
  c2 d g, g g4 a g8 g fs g a2 b e4 f d e a,2 a4 e a2 a
}



\include "./score.ly"

\version "2.18.2"  % necessary for upgrading to future LilyPond versions.
